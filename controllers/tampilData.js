const db = require("../models/db"); // Mengimpor koneksi dari db.js

const tampilData = (req, res) => {
    console.log("Received request for /data"); // Tambahkan log ini
    db.query("SELECT * FROM users;", (err, results) => {
        if (err) {
            console.error("Error querying database:", err);
            return res.status(500).json({ error: "Database query failed" });
        }
        res.json(results);
    });
};

module.exports = tampilData

