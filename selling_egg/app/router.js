'use strict'

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app

  router.get('/', controller.selling.All)
  router.get('/site=:site', controller.selling.Num)

  router.get('/money=:money', controller.selling.Money)
}
