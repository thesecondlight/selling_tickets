// 加乐观锁
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
    const data1 = await db.query(`select site,money,num,version as old_version from t2019 where site=${site} and num > 0`)
    if (data1[0][0] == null) {
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
      await conn.commit()
    }
    const conn1 = await db.transaction()
    const data2 = await db.query(`update t2019 set num=num-1,version=version+1 where site=${site} and version = old_version`)// Sequelize.Transaction.LOCK.UPDATE
    await conn1.commit()
    const conn2 = await db.transaction()
    const data3 = await db.query(`insert into orders(site_id,tnum) select site,num from t2019 where site=${site}`)
    await conn2.commit()
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
