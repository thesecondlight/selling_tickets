'use strict'

const Controller = require('egg').Controller

class HomeController extends Controller {
  async All (ctx) {
    const data = await this.app.mysql.query('select * from t2019')
    ctx.body = {
      data: data
    }
  }

  async Money (ctx) {
    const { money } = ctx.params
    const data = await this.app.mysql.query('SELECT * from t2019 where money=?', [money])
    this.ctx.body = {
      data: data
    }
  }

  async Num (ctx) {
    const { site } = ctx.params
    const data = await ctx.service.queryNum.getNum()
    if(data==null){
      this.ctx.body = {
        msg: '无票'
      }
    }else{
      this.ctx.body = {
        msg: '购票详情:',
        data: data
      }
    }
    
  }
}
module.exports = HomeController
