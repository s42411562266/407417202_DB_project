const mysql = require('mysql2');

const pool = mysql.createPool({
  host: 'us-cdbr-east-03.cleardb.com',
  user: 'b67f5bab82bd9c',
  password: 'a44cb4d6',
  database: 'heroku_124efe39ea9c4c2',
});

/*const pool = mysql.createPool({ 
  host:'localhost', 
  user: 'root', 
  password: '0000',
  database: 'u_407417202'
});*/

module.exports = pool.promise();