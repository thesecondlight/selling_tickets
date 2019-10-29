'use strict'

module.exports = app => {
  const { int } = app.Sequelize
  const Order = app.model.define('orders', {
    id: { type: int },
    site_id: { type: int },
    tnum: { type: int }
  })
  return Order
}
