const Koa = require('koa' );
const Router = require('koa-router')
const fs=require('fs')
const app = new Koa();
const router=new Router();


// router.get('/',(ctx,next)=>{
//   ctx.body='selling!'
// })

let urls = fs.readdirSync(__dirname+'/routes')
urls.forEach((element)=>{
  let module=require(__dirname+'/routes/'+element)
  router.use('/'+element.replace('.js',''),module.routes())
})

app
  .use(router.routes())
  .use(router.allowedMethods())

app.listen(3000)

console.log(`listening on port 3000`)