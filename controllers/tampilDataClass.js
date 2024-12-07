const db = require("../models/db"); // Mengimpor koneksi dari db.js

const tampilDataClass = (req, res) => {
    console.log("Received request for /dataClass"); // Tambahkan log ini
    db.query("SELECT * FROM class;", (err, results) => {
        if (err) {
            console.error("Error querying database:", err);
            return res.status(500).json({ error: "Database query failed" });
        }
        res.json(results);
    });
};

module.exports = tampilDataClass

