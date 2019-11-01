'use strict'
const Service = require('egg').Service
class DataService extends Service {
  async getNum () {
    const { ctx } = this
    const { site } = this.ctx.params
    let transaction = await ctx.model.transaction();
    try{
      const select_data = await ctx.model.query(`select * from t2019 where site=${site} and num > 0`,{transaction:transaction})
      console.log(select_data[0][0])
      if (select_data == null || select_data[0][0]== null || select_data == 'undefined') { 
        await transaction.rollback();
        return  
      }
      else{
        const update_data = await ctx.model.query(`update t2019 set num=num-1 where site=${site} and num >= 0`, {transaction:transaction, lock:transaction.LOCK.UPDATE})
        const order_data = await ctx.model.query(`insert into orders(site_id,tnum) select site,num from t2019 where site=${site} and num >= 0`,{transaction:transaction})
        await transaction.commit();
        return select_data[0][0]
      }
      
    }catch(err){
      await transaction.rollback();
      throw err;
    }
  }
}
module.exports = DataService
