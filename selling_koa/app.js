const Koa = require('koa')
const Router = require('koa-router')
const app = new Koa()
const router = new Router()
const config = require('./config/default.js')
const Sequelize = require('sequelize')

const db = new Sequelize(config.database.DATABASE, config.database.USERNAME, config.database.PASSWORD,
  {
    host: config.database.HOST,
    dialect: 'mysql'
  })

router.get('/site=:site', async (ctx) => {
  const { site } = ctx.params
  const conn = await db.transaction()
  try {
    const data1 = await db.query(`select * from t2019 where site=${site} and num > 0`, { transaction: conn })
    if (data1[0][0] == null || data1[0][0] === 'undefined' || data1 == null) {
      ctx.body = {
        msg: '无票'
      }
      await conn.rollback()
      return
    } else if (data1[0][0]) {
      ctx.body = {
        msg: '购票详情:',
        data: data1[0][0]
      }
      const data2 = await db.query(`update t2019 set num=num-1 where site=${site} and num >= 0`, { transaction: conn, lock: conn.LOCK.UPDATE })// Sequelize.Transaction.LOCK.UPDATE
      const data3 = await db.query(`insert into orders(site_id,tnum) select site,num from t2019 where site=${site} and num >= 0`, { transaction: conn })
      await conn.commit()
    }
  } catch (e) {
    await conn.rollback()
    throw e
  }
})

app
  .use(router.routes())
  .use(router.allowedMethods())

app.listen(3000)

console.log(`listening on port 3000`)
module.exports = { db }
