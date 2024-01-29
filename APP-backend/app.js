const express = require("express");
const app = express();
const mongoose = require("mongoose");
const cors = require("cors");
require("./models/userdetails");
const bcrypt = require("bcryptjs");
app.use(cors());
app.use(express.json());

const mongoUrl =
  "mongodb+srv://sanket:sanket@cluster0.9unhaxd.mongodb.net/?retryWrites=true&w=majority";
//mongodb+srv://sanket:<password>@cluster0.9unhaxd.mongodb.net/
mongoose
  .connect(mongoUrl, {
    useNewUrlParser: true,
  })
  .then(() => {
    console.log("connected to database");
  })
  .catch((e) => console.log(e));

app.use("/api", require("./routes/index"));
app.use("/api", require("./routes/auth.route"));
app.listen(8080, () => {
  console.log("server started");
});

//mongodb+srv://sanket:sanket1:Wh9mTKMCd5M4XQLM@cluster0.9unhaxd.mongodb.net/?retryWrites=true&w=majority
//mongodb+srv://<username>:<password>@cluster0.9unhaxd.mongodb.net/
