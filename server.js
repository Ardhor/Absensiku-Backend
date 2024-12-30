const express = require("express");
const cors = require("cors");
const bcrypt = require("bcrypt");
const db = require("./models/db"); // Mengimpor koneksi database dari db.js

const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json());

// Mengimpor controller
const tampilData = require("./controllers/tampilData");
const login = require("./controllers/login");
const register = require("./controllers/register");
const tampilDataClass = require("./controllers/tampilDataClass");
const joinClass = require("./controllers/joinClass");
const addClass = require('./controllers/addClass');

// Menentukan route dan menghubungkannya ke controller yang sesuai
app.get("/data", tampilData);           // Endpoint untuk menampilkan data
app.post("/login", login);              // Endpoint untuk login
app.post("/register", register);        // Endpoint untuk registrasi
app.get("/dataClass", tampilDataClass); // Endpoint untuk menampilkan data kelas
app.post('/join-class', joinClass);
app.post('/add-class', addClass);

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Server running on localhost:${PORT}`);
});
