'use strict'
const Service = require('egg').Service
class DataService extends Service {
  async getNum () {
    const { site } = this.ctx.params
    const update_data = await this.app.mysql.query('update t2019 set num=num-1 where num>=0 and site=?', [site])
    const select_data = await this.app.mysql.query('select * from t2019 where site=? and num > 0', [site])

    const order_data = await this.app.mysql.query('insert into orders(site_id) select site from t2019 where num>=0 and site=? ', [site])
    console.log('orders表Id', order_data.insertId)

    if (select_data !== '' && order_data.insertId != 0) return select_data
    else return '无票'
  }
}
module.exports = DataService
