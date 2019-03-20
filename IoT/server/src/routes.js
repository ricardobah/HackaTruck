
const express = require('express')
const routes = express.Router();

const SensorController = require("./controllers/sensorController")
routes.get("/sensor", SensorController.index)
routes.get("/sensor/:id", SensorController.show)
module.exports = routes;