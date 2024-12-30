const db = require("../models/db")

const addClass = async (req, res) => {
    let { user_id, classname, code_class, description }= req.body;

    if (!user_id || !classname) {
        return res.status(400).json({message: "Harus mengisi semua inputan."});
    }

    const generateClassCode = () => {
        const characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        let code = '';
        for (let i = 0; i< 6; i++){
            code += characters.charAt(Math.floor(Math.random() * characters.length));
        }
        return code;
    }
    code_class = generateClassCode();

    try {
        db.query('SELECT * FROM classes WHERE code_class = ?', [code_class], (err, results) => {
            if (err) {
                return res.status(500).json({message: "Database error."});
            }
            if (results.length > 0){
                return res.status(500).json({ message: "Kelas sudah ada. Coba lagi" });
            }

            // Menambahkan kelas baru
            const query = "INSERT INTO classes (classname, description, user_id, code_class) VALUES (?,?,?,?)";
            db.query(query, [classname, description, user_id, code_class], (err) => {
                if (err) {
                    return res.status(500).json({ message: " Error creating class." });
                }
                return res.status(201).json({ message: "Class berhasil dibuat." });
            })
        });
    } catch (error) {
        return res.status(500).json({ message: "Server error." });
    }
};

module.exports = addClass;