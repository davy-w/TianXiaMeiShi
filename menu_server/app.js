//引入第三方模块
const mysql=require('mysql');
const express=require('express');
const cors=require('cors');
const session=require('express-session');
const bodyParser=require('body-parser');
//配置第三方模块
 //创建连接池
 var pool=mysql.createPool({
   host:'127.0.0.1',
   user:'root',
   password:'',
   port:3306,
   database:'menu',
   connectionLimit:20
 })
 //跨域
 var server=express();
 server.use(cors({
   origin:["http://127.0.0.1:8080","http://localhost:8080"],
   credentials:true
 }))
 //session
 server.use(session({
  secret:"128位字符串",
  resave:true,//每次请求更新数据
  saveUninitialized:true
}))
//指定静态目录
server.use(express.static("public"));

server.use(bodyParser.urlencoded({
  extended:false
}));
//设置端口
server.listen(3000);
//用户登录
server.get("/login",(req,res)=>{
  //1:参数 
  var uname=req.query.uname;
  var upwd=req.query.upwd;
  console.log(uname,upwd);
  //1.1正则表达式验证用户名和密码
  //2:sql
  var sql="SELECT uid FROM user WHERE uname=? AND upwd=?"
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
        res.send({code:-1,msg:"用户名或密码有误"});
        console.log(result)
    }else{
      //将当前登录用户的uid 保存到session对象
      //result=[{id:1}]
      req.session.id=result[0].uid;
      res.send({code:1,msg:"登录成功"});
      console.log(result)
    } 
  })
  //3:json
})
//用户注册
server.post("/reg",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  var email=req.body.email
  // console.log(obj);
  var sql="INSERT INTO user (uname,upwd,email) value(?,md5(?),?)";
  pool.query(sql,[uname,upwd,email],(err,result)=>{
    
    if(err) throw err;
    if(result.affectedRows>0){
			res.send({code:200});
		}
  })
})
//用户名验证
server.get("/verify",(req,res)=>{
  var uname=req.query.uname;
  console.log(uname);
  var sql="SELECT * FROM user WHERE uname=?";
  pool.query(sql,[uname],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      res.send({data:0})
    }else{
      res.send({data:1})
    }
  })
});
//首页轮播图 图片
server.get("/img",(req,res)=>{
	pool.query("SELECT * FROM index_img",function(err,result){
		if(err) throw err;
		res.send({code:1,data:result});
	});
});
// server.get("/img",(req,res)=>{
// 	pool.query("SELECT * FROM index_img",function(err,result){
// 		if(err) throw err;
// 		res.send({code:1,data:result});
// 	});
// });
//热门话题图片1
server.get("/HotTopic",(req,res)=>{
  var sql = "SELECT * FROM menu_index_hottopic ORDER BY sendtime";
  pool.query(sql,(err,result)=>{
      if(err)throw err;
      res.send({code:1,data:result});
  })
});
//热门话题图片2
server.get("/log",(req,res)=>{
       var sql="select * from menu_index_log";
       pool.query(sql,(err,result)=>{
        if(err)throw err;
        console.log(result);
         res.send({code:1,data:result});
      })
  });
  //详情页数据
  server.get("/details",(req,res)=>{
    var lid=req.query.lid;
    console.log(lid);
    var sql="select * from menu_index_log where lid=?";
    pool.query(sql,[lid],(err,result)=>{
      if(err) throw err;
      console.log(result);
      res.send(result);
    })
  })