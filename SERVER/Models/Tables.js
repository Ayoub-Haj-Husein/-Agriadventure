const sequelize = require("./db")
const { DataTypes } = require("sequelize")

// Users Table Model Start
const User = sequelize.define('User', {
  user_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
  },
  user_type: {
    type: DataTypes.STRING,
    allowNull: false,
    defaultValue: "user",
  },
  firstName: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  lastName: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  male_image_name: {
    type: DataTypes.STRING,
  },
  female_image_name: {
    type: DataTypes.STRING,
  },
  gender: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  created_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
  },
  updated_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
  },
  deleted_at: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  paranoid: true, 
});
// Users Table Model End

// Locations Table Model Start
const Locations = sequelize.define('Locations', {
  location_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
  },
  location_name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  owner: {
    type: DataTypes.STRING,
    allowNull: false,
    defaultValue: "Public",
  },
  description: {
    type: DataTypes.STRING,
  },
  category: {
    type: DataTypes.STRING,
  },
  opening_hours: {
    type: DataTypes.STRING,
  },
  deleted_at: {
    type: DataTypes.DATE,
    allowNull: true,
  },
  price: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  paranoid: true, // تمكين الحذف الناعم
});
// Locations Table Model End

// Locations Images Table Model Start
const Locations_images = sequelize.define('Locations_images', {
  image_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
  },
  location_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  image_name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  deleted_at: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  paranoid: true, 
});
// Locations Images Table Model End

// Ratings and Reviews Taple Model Start
const Ratings_And_Reviews = sequelize.define('Ratings_And_Reviews', {
  Ratings_And_Reviews_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
  },
  location_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  user_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  user_comment: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  location_rating: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  deleted_at: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  paranoid: true, // تمكين الحذف الناعم
});
// Ratings and Reviews Taple Model End

// Activities Table Model Start
const Activities = sequelize.define('Activities', {
  activity_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
  },
  location_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  activity_name: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  activity_description: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  deleted_at: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  paranoid: true, // تمكين الحذف الناعم
});
// Activities Table Model End

// Contact Table Model Start
const Contact_us = sequelize.define('Contact_us', {
  Contact_us_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
  },
  user_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  message: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  message_status: {
    type: DataTypes.STRING,
    allowNull: false,
    defaultValue: "Not Readable",
  },
  sent_at: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  message_category: {
    type: DataTypes.STRING,
  },
  deleted_at: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  paranoid: true, // تمكين الحذف الناعم
});
// Contact Table Model End

// Reservations Table Model Start
const Reservation = sequelize.define('Reservation', {
  reservation_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
  },
  user_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  location_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  reservation_date: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  visit_date: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  number_of_visitors: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  reservation_details: {
    type: DataTypes.TEXT,
  },
  reservation_status: {
    type: DataTypes.STRING,
  },
  payment_information: {
    type: DataTypes.STRING,
  },
  price: {
    type: DataTypes.FLOAT,
  },
  payment_method: {
    type: DataTypes.STRING,
  },
  contact_information: {
    type: DataTypes.STRING,
  },
  phone: {
    type: DataTypes.STRING,
  },
  additional_comments: {
    type: DataTypes.TEXT,
  },
  deleted_at: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  paranoid: true, // تمكين الحذف الناعم
});
// Reservations Table Model End

// Cart Table Model Start
const Cart = sequelize.define('Cart', {
  cart_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
  },
  user_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  product_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  quantity: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  total_price: {
    type: DataTypes.FLOAT,
    allowNull: false,
  },
  created_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
  },
  updated_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
  },
}, {
  paranoid: true,
});
// Cart Table Model End

// Products Table Model Start
const Products = sequelize.define('Products', {
  product_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
  },
  product_name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  description: {
    type: DataTypes.STRING,
  },
  price: {
    type: DataTypes.FLOAT,
    allowNull: false,
  },
  created_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
  },
  updated_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
  },
  deleted_at: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  paranoid: true,
});
// Products Table Model End

// Orders Table Model Start
const Orders = sequelize.define('Orders', {
  order_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
  },
  user_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  total_price: {
    type: DataTypes.FLOAT,
    allowNull: false,
  },
  order_status: {
    type: DataTypes.STRING,
    allowNull: false,
    defaultValue: "Pending",
  },
  created_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
  },
  updated_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
  },
  deleted_at: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  paranoid: true,
});
// Orders Table Model End

const CreateUsersTable = () => {
  User.sync({ alter: true })
    .then(() => {
      console.log("User Table Created");
    })
    .catch((error) => {
      console.log("Ann Error Occurred", error);
    })
}

const CreateLocationsTable = () => {
  Locations.sync({ alter: true })
    .then(() => {
      console.log("Locations Table Created");
    })
    .catch((error) => {
      console.log("Ann Error Occurred", error);
    })
}

const CreateLocationsImagesTable = () => {
  Locations_images.sync({ alter: true })
    .then(() => {
      console.log("User Table Created");
    })
    .catch((error) => {
      console.log("Ann Error Occurred", error);
    })
}

const CreateRatingsAndReviewsTable = () => {
  Ratings_And_Reviews.sync({ alter: true })
    .then(() => {
      console.log("Locations Table Created");
    })
    .catch((error) => {
      console.log("Ann Error Occurred", error);
    })
}

const CreateActivitiesTable = () => {
  Activities.sync({ alter: true })
    .then(() => {
      console.log("User Table Created");
    })
    .catch((error) => {
      console.log("Ann Error Occurred", error);
    })
}

const CreateContactUsTable = () => {
  Contact_us.sync({ alter: true })
    .then(() => {
      console.log("Locations Table Created");
    })
    .catch((error) => {
      console.log("Ann Error Occurred", error);
    })
}

const CreateReservationTable = () => {
  Reservation.sync({ alter: true })
    .then(() => {
      console.log("User Table Created");
    })
    .catch((error) => {
      console.log("Ann Error Occurred", error);
    })
}

const CreateCartTable = () => {
  Cart.sync({ alter: true })
    .then(() => {
      console.log("User Table Created");
    })
    .catch((error) => {
      console.log("Ann Error Occurred", error);
    })
}

const CreateProductsTable = () => {
  Products.sync({ alter: true })
    .then(() => {
      console.log("User Table Created");
    })
    .catch((error) => {
      console.log("Ann Error Occurred", error);
    })
}

const CreateOrdersTable = () => {
  Orders.sync({ alter: true })
    .then(() => {
      console.log("User Table Created");
    })
    .catch((error) => {
      console.log("Ann Error Occurred", error);
    })
}

module.exports = {
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
}