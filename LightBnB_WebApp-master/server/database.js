const properties = require('./json/properties.json');
const users = require('./json/users.json');
const {Pool} = require('pg');

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "lightbnb",
});
/// Users

/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithEmail = function(email) {
  const querryString = 
  (`
    SELECT * 
    FROM users
    WHERE email = $1;
  `)
  return pool.query(querryString, [email])
    .then(res => {
      return res.rows[0]
    })
    .catch (err => {
      console.log('Error:', err)
    });
};
exports.getUserWithEmail = getUserWithEmail;

/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithId = function(id) {
  const querryString = 
  (`
    SELECT * 
    FROM users
    WHERE id = $1;
  `)
  return pool.query(querryString, [id])
    .then(res => {
      return res.rows[0]
    })
    .catch (err => {
      console.log('Error:', err)
    });
};

exports.getUserWithId = getUserWithId;


/**
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
 */
const addUser =  function(user) {
  const querryString = 
  (`
  INSERT INTO users (name, email, password)
  VALUES ($1, $2, $3);
  `)

  return pool.query(querryString, [user.name, user.email, user.password])
    .then (res => {
      return res.rows[0];
    })
    .catch(err => {
      console.log('Error:', err)
    });
};
exports.addUser = addUser;

/// Reservations

/**
 * Get all reservations for a single user.
 * @param {string} guest_id The id of the user.
 * @return {Promise<[{}]>} A promise to the reservations.
 */
const getAllReservations = function(guest_id, limit = 10) {

  const querryString = 
  (`
  SELECT reservations.*, properties.*, AVG(property_reviews.rating) AS average_rating
  FROM properties 
    JOIN reservations ON property_id = properties.id
    JOIN property_reviews ON reservation_id = reservations.id
  WHERE reservations.guest_id = $1 AND reservations.end_date < NOW()::date
  GROUP BY reservations.id, properties.id
  ORDER BY reservations.start_date
  LIMIT $2;
  `)

  return pool.query(querryString, [guest_id, limit])
    .then(res => {
      return res.rows
    })
    .catch (err => {
      console.log('Error', err)
    });
};
exports.getAllReservations = getAllReservations;

/// Properties

/**
 * Get all properties.
 * @param {{}} options An object containing query options.
 * @param {*} limit The number of results to return.
 * @return {Promise<[{}]>}  A promise to the properties.
 */
const getAllProperties = function(options, limit = 10) {
    pool.query(`
    SELECT * FROM properties
    LIMIT $1
    `, [limit])
    .then(res => {
      console.log(res.rows)
    });
}
exports.getAllProperties = getAllProperties;


/**
 * Add a property to the database
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
 */
const addProperty = function(property) {
  const propertyId = Object.keys(properties).length + 1;
  property.id = propertyId;
  properties[propertyId] = property;
  return Promise.resolve(property);
}
exports.addProperty = addProperty;
