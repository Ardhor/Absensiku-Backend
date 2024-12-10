const bcrypt = require("bcrypt");
const db = require("../models/db"); // Mengimpor koneksi dari db.js

const login = async (req, res) => {
    const { identifier, password } = req.body; // identifier untuk username atau email

    // Validasi input
    if (!identifier || !password) {
        return res
            .status(400)
            .json({ message: "Please provide username or email and password." });
    }

    // Query untuk mengambil pengguna berdasarkan username atau email
    db.query(
        "SELECT * FROM users WHERE username = ? OR email = ?",
        [identifier, identifier],
        async (err, results) => {
            if (err) {
                console.error("Error querying database:", err);
                return res.status(500).json({ message: "Database query failed." });
            }

            if (results.length === 0) {
                // Jika username/email tidak ditemukan
                return res
                    .status(401)
                    .json({ message: "Invalid username/email or password." });
            }

            const user = results[0];

            // Cek apakah password yang disimpan hashed atau tidak
            if (user.password.startsWith("$2b$")) {
                // Jika hashed, bandingkan menggunakan bcrypt
                const match = await bcrypt.compare(password, user.password);
                if (!match) {
                    return res
                        .status(401)
                        .json({ message: "Invalid username/email or password." });
                }
            } else {
                // Jika tidak hashed, bandingkan langsung
                if (user.password !== password) {
                    return res
                        .status(401)
                        .json({ message: "Invalid username/email or password." });
                }
            }

            // Jika login berhasil
            res.status(200).json({ message: "Login successful!", userId: user.id });
        }
    );
};

module.exports = login;
