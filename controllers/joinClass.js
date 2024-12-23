const bcrypt = require("bcrypt");
const db = require("../models/db"); // Mengimpor koneksi dari db.js

const joinClass = async (req, res) => {
    const { code_class, username } = req.body;

    if (!code_class || !username) {
        return res.status(400).json({ message: 'Class code and username are required.' });
    }

    // Cari user_id berdasarkan username
    db.query('SELECT id AS user_id FROM users WHERE username = ?', [username], (err, userResults) => {
        if (err) {
            console.error('Error querying users: ', err);
            return res.status(500).json({ message: "Database error." });
        }

        if (userResults.length === 0) {
            return res.status(404).json({ message: "Username tidak terdaftar." });
        }

        const user_id = userResults[0].user_id; // id sudah diganti menjadi user_id karena pada pemanggilan querynya menggunakan as

        // Cari kelas berdasarkan kode kelas
        db.query('SELECT id AS class_id FROM classes WHERE code_class = ?', [code_class], (err, classResults) => {
            if (err) {
                console.error('Error querying classes: ', err);
                return res.status(500).json({ message: "Database error." });
            }

            if (classResults.length === 0) {
                return res.status(404).json({ message: "Class tidak ada." });
            }

            const class_id = classResults[0].class_id; // id sudah diganti menjadi class_id karena pada pemanggilan querynya menggunakan as

            // Memeriksa apakah user sudah tergabung di kelas
            db.query(
                'SELECT * FROM class_members WHERE class_id = ? AND user_id = ?',
                [class_id, user_id],
                (err, enrollResults) => {
                    if (err) {
                        console.error('Error querying enrollments: ', err);
                        return res.status(500).json({ message: "Database error." });
                    }

                    if (enrollResults.length > 0) {
                        return res.status(400).json({ message: "Anda sudah terdaftar di kelas ini." });
                    }

                    // Tambahkan user ke kelas
                    db.query(
                        'INSERT INTO class_members (class_id, user_id) VALUES (?, ?)',
                        [class_id, user_id],
                        (err) => {
                            if (err) {
                                console.error('Error inserting enrollment: ', err);
                                return res.status(500).json({ message: "Database error." });
                            }

                            return res.status(200).json({ message: 'Successfully joined the class.' });
                        }
                    );
                }
            );
        });
    });
};

module.exports = joinClass;