var mysql = require('mysql')
var config = require('../config/default.js')

var pool = mysql.createPool({
  host: config.database.HOST,
  user: config.database.USERNAME,
  password: config.database.PASSWORD,
  database: config.database.DATABASE
})

class Mysql {
  query () {
    return new Promise((resolve, reject) => {
      pool.query('SELECT * from t2019', function (error, results, fields) {
        if (error) {
          throw error
        };
        resolve(results)
        // console.log('The solution is: ', results[0].solution);
      })
    })
  }

  querySite (site) {
    return new Promise((resolve, reject) => {
      pool.query(`SELECT * from t2019 where site=${site}`, function (error, results, fields) {
        if (error) {
          throw error
        };
        resolve(results)
        // console.log('The solution is: ', results[0].solution);
      })
    })
  }

  queryMoney (money) {
    return new Promise((resolve, reject) => {
      pool.query(`SELECT * from t2019 where money=${money}`, function (error, results, fields) {
        if (error) {
          throw error
        };
        if(results==''){
          resolve('不存在！')
        }
        resolve(results)
        // console.log('The solution is: ', results[0].solution);
      })
    })
  }

  queryNum (site) {
    return new Promise((resolve, reject) => {
      pool.query(`update t2019 set num=num-1 where num>=0 and site=?`,[site],function (error, results, fields) {
        if (error) {
          throw error
        };
        console.log(results)

        pool.query(`select * from t2019 where site=? and num > 0 `,[site], function (error, results, fields) {
          if (error) {
            throw error
          };
          //console.log(results[0].num)
          if(results==''){
            resolve('无票')
          }
          resolve(results)
          
        }); 

       //orders表
       pool.query(`insert into orders(site_id) select site from t2019 where num>=0 and site=? `,[site], function (error, results, fields) {
          if (error) {
            console.log("error")
          };
          console.log(results.insertId)
          resolve(results)
          
        });
       //展示
        pool.query('SELECT * from t2019', function (error, results, fields) {
          if (error) {
            throw error
          };
          //resolve(results)
        })
      })
    })
  }
}

module.exports = new Mysql()
