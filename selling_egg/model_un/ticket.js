'use strict'

module.exports = app => {
  const { float, int } = app.Sequelize
  const Ticket = app.model.define('t2019', {
    site: int,
    money: float,
    num: int,
    version: int
  })
  return Ticket
}
