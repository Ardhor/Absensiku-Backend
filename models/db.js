const mysql = require("mysql");

// Membuat koneksi ke database MySQL
const db = mysql.createConnection({
    host: "localhost",
    user: "root", // Ganti dengan username MySQL Anda jika diperlukan
    password: "", // Ganti dengan password MySQL Anda jika diperlukan
    database: "absensiku_api", // Nama database yang digunakan
    port: 3306, // Port MySQL yang benar (default 3306, ganti jika perlu)
});

// Melakukan koneksi ke database
db.connect((err) => {
    if (err) throw err;
    console.log("Connected to MySQL Database");
});

// Ekspor objek koneksi untuk digunakan di file lain
module.exports = db;