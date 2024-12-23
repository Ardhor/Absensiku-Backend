const bcrypt = require("bcrypt");
const db = require("../models/db"); // Mengimpor koneksi dari db.js

const joinClass = async (req, res) => {
    const{code_class, user_id} = req.body;

    if (!code_class || !user_id) {
        return res.status(400).json({message: 'Class code and user id are required.'});
    }

    // cari class berdasarkan kode kelas
    db.query('select * from classes where code_class = ?', [code_class], (err, results) => {
        if (err) {
            console.error('Error querying classes: ', err);
            return res.status(500).json({ message: "Database error." });
        }

        if (results.length === 0) {
            return res.status(404).json({ message: "Class not found" });
        }

        const class_id = results[0].id;

        // Memeriksa user sudah tergabung ke kelass atau belum
        db.query(
            'select * from class_members where class_id=? and user_id=?',
            [class_id, user_id],
            (err, enrollResults) => {
                if (err) {
                    console.error('Error querying enrollments: ', err);
                    return res.status(500).json({message: "Database error."});
                }

                if (enrollResults.length > 0){
                    return res.status(400).json({message: "user already enrolled in this class."});
                }

                // tambahkan user ke kelas
                db.query(
                    'INSERT INTO class_members (class_id, user_id) values (?,?)',
                    [class_id, user_id],
                    (err) => {
                        if (err) {
                            console.error('Error inserting enrollment: ', err);
                            return res.status(500).json({ message: "Database eror."});
                        }

                        return res.status(200).json({ message: 'Successfully joined the class.' });
                    }
                );
            }
        );
    });
}

module.exports = joinClass