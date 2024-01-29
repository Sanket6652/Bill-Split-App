const express = require("express");
const router = express.Router();
const mongoose = require("mongoose");
const user = require("../models/userdetails");
const bcrypt = require("bcryptjs");
const { route } = require("./auth.route");
const jwt = require("jsonwebtoken");
const JWT_SECRET = "sdffdgvcdsew4ertg456ythgbvf";

const User = mongoose.model("UserInfo");
router.post("/register", async (req, res) => {
  const { fname, lname, email, password } = req.body;
  const enccryptedPassword = await bcrypt.hash(password, 10);
  try {
    const olduser = await User.findOne({ email });
    if (olduser) {
      return res.send({ error: "user Exist" });
    } else {
      await User.create({
        fname,
        lname,
        email,
        password: enccryptedPassword,
      });
      res.send({ status: "Ok" }); 
    }
  } catch (e) {
    res.send({ status: e });
  }
});

router.post("/login", async (req, res) => {
  const { email, password } = req.body;
  const user = await User.findOne({ email });
  if (!user) {
    return res.json({ error: "User Not Found" });
  }
  if (await bcrypt.compare(password, user.password)) {
    const token = jwt.sign({}, JWT_SECRET);
    if (res.status(200)) {
      return res.json({ status: "Ok", data: token });
    } else {
      return res.json({ error: "error" });
    }
  }
  res.status(401).json({ status: "error", error: "Invalid Password" });
});
module.exports = router;
