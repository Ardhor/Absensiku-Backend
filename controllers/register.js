const bcrypt = require("bcrypt");
const db = require("../models/db"); // Mengimpor koneksi dari db.js

const register = async (req, res) => {
    const { name, username, password, email } = req.body;

    if (!name || !username || !password || !email) {
        return res.status(400).json({
            message: "Please provide full name, username, password, and email.",
        });
    }

    db.query("SELECT * FROM users WHERE username = ? OR email = ?", [username, email], async (err, results) => {
        if (err) {
            console.error("Error querying database:", err);
            return res.status(500).json({ message: "Database query failed." });
        }

        const existingUsernames = results.map((user) => user.username);
        const existingEmails = results.map((user) => user.email);
        const messages = [];

        if (existingUsernames.includes(username)) {
            messages.push("Username already exists.");
        }
        if (existingEmails.includes(email)) {
            messages.push("Email already exists.");
        }

        if (messages.length > 0) {
            return res.status(409).json({ message: messages.join(" ") });
        }

        const hashedPassword = await bcrypt.hash(password, 10);

        db.query(
            "INSERT INTO users (name, username, password, email) VALUES (?, ?, ?, ?)",
            [name, username, hashedPassword, email],
            (err, results) => {
                if (err) {
                    console.error("Error inserting data:", err);
                    return res.status(500).json({ message: "Failed to register user." });
                }
                res.status(201).json({
                    message: "User registered successfully!",
                    userId: results.insertId,
                });
            }
        );
    });
};

module.exports = register;
