const db = require("../models/db"); // Mengimpor koneksi dari db.js

const tampilDataClass = (req, res) => {
    console.log("Received request for /dataClass"); // Tambahkan log ini
    db.query("SELECT classes.id, classname, description, users.name FROM classes inner join users on classes.user_id = users.id;", (err, results) => {
        if (err) {
            console.error("Error querying database:", err);
            return res.status(500).json({ error: "Database query failed" });
        }
        res.json(results);
    });
};

module.exports = tampilDataClass

