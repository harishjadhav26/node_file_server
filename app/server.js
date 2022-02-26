const cors = require("cors");
const express = require("express");
const app = express();

global.__basedir = __dirname;

var hostip = process.env.HOSTIP

var corsOptions = {
  origin: hostip
};

app.use(cors(corsOptions));

const initRoutes = require("./src/routes");

app.use(express.urlencoded({ extended: true }));
initRoutes(app);

let port = process.env.PORT;
let host = hostip;
app.listen(port, () => {
  console.log(`Running at ${host}:${port}`);
});
