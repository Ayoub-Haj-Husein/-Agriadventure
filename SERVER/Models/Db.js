const { Sequelize } = require('sequelize');

const sequelize = new Sequelize({
  database: "Agri_Adventure",
  username: "Agri_Adventure_Ayoub",
  password: "a0788386721*",
  host: "localhost",
  dialect: "postgres",
})

module.exports = sequelize
