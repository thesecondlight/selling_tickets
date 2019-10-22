const Koa = require('koa')
// const config = require('../config/default')
const mysql = require('../mysql')
const Router = require('koa-router')
const router = new Router()

const app = new Koa()
router.get('/', async (ctx) => {
  const data = await mysql.query()

  ctx.body = {
    msg: '所有信息查询成功',
    data: data

  }
})
router.get('/site=:site', async (ctx) => {

  const { site } =ctx.params

  const data = await mysql.queryNum(site)
  if (data !='') {
    ctx.body = {
      msg: '购票详情:',
      data: data
    }
  } else if(data==''){
    ctx.body = {
      msg: '无票',
      data: data
    }
  }
})
router.get('/money=:money', async (ctx) => {
  const { money } = ctx.params
  const data = await mysql.queryMoney(money)

  if (data !== '') {
    ctx.body = {
      msg: '票价详情:',
      data: data
    }
  } else {
    ctx.body = {
      msg: '暂无该数据',
      data: data
    }
  }
})
app.use(router.routes())

module.exports=router