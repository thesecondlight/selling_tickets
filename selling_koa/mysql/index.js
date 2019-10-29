// var mysql = require('mysql')
var config = require('../config/default.js')

const mysql = require('mysql-pro')

const db = new mysql({
  mysql: {
    host: config.database.HOST,
    user: config.database.USERNAME,
    password: config.database.PASSWORD,
    database: config.database.DATABASE
  }
})

async function Sel (ctx) {
  db.query(`select * from t2019 where site=? and num > 0`, [site], function (error, results, fields) {
    if (error) {
      throw error
    };
    // console.log(results[0].num)
    if (results === '') {
      return '无票'
    }
    return results
  })
}
async function Upd (ctx) {
  db.query(`update t2019 set num=num-1 where num>=0 and site=?`, [site], function (error, results, fields) {
    if (error) {
      throw error
    };
    console.log(results)
  })
}

async function Ins (ctx) {
  // orders表
  db.query(`insert into orders(site_id) select site from t2019 where num>=0 and site=? `, [site], function (error, results, fields) {
    if (error) {
      console.log('error')
    };
    console.log(results.insertId)
    return results
  })
}

module.exports = { Sel, Upd, Ins }
