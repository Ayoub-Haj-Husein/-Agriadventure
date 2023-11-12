const express = require("express")
const jwt = require("jsonwebtoken")
const {
  CreateUsersTable,
  CreateLocationsTable,
  CreateLocationsImagesTable,
  CreateRatingsAndReviewsTable,
  CreateActivitiesTable,
  CreateContactUsTable,
  CreateReservationTable,
  CreateCartTable,
  CreateProductsTable,
  CreateOrdersTable,
} = require("./Models/Tables")
const cors = require("cors")
const app = express()
const port = 12000

app.use(express.json())
app.use(cors())


app.get("/", (req, res) => {
  res.send("Hello From Agri_Adventure")
})


// Create Tables Start 
CreateUsersTable()
CreateLocationsTable()
CreateLocationsImagesTable()
CreateRatingsAndReviewsTable()
CreateActivitiesTable()
CreateContactUsTable()
CreateReservationTable()
CreateCartTable()
CreateProductsTable()
CreateOrdersTable()
// Create Tables End 

// Port Listen
app.listen(port, () => {
  console.log(`Run On Port ${port}`);
})