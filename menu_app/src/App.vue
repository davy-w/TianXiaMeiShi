<template>
  <div id="app">
    <div id="nav">
     
    </div>
    
    <router-view/>

  </div>
</template>
<script>
// import NavBar from './components/caipu/Navbar.vue'
// import BotNav from './components/caipu/BotNav.vue'
// import Footer from './components/caipu/Footer.vue'
// export default {
//   components:{
//     NavBar,
//     BotNav,
//     Footer
//   }
// }
</script>
<style>
/**************** 轮播图样式************************/
.my_carousel .el-carousel__indicators{
    position:absolute;
    left:419px;
    top:256px;
  }
  .my_carousel{
    width:990px;
    height:300px;
    position:relative;
  }
  .my_carousel img{
    height:100%;
    width:100%;
  }
  .my_carousel .el-carousel__button{
    width:20px;
    height:20px;
    border-radius:50%;
  }
  .my_carousel button{
    outline:0;
  }
/****************************************/ 
/*************登录注册模块****************/ 
 .login_container .el-tabs{
    border:none;
    box-shadow:none;
    background: rgba(190,190,190,0.6);
  }
  .login_container .el-tabs__nav-scroll{
    height:50px;
    background:rgba(192,192,192,0.5);
    border-radius:10px 10px 0 0;
  }
  .login_container .el-tabs__content{
    height:250px;
    background:rgba(190,190,190,0.3);
    border-radius:0 0 10px 10px;
  }
  .login_container .el-tabs{
    border-radius: 10px;
  }
  .login_container .el-tabs__header{
    border-radius: 10px 10px 0 0;
  }
  .login_container #tab-second,
  .login_container #tab-first{
    width:265px;
    height:50px;
    font-size:20px;
    font-family:"Hiragino Sans GB";
    color:#000;
    cursor:pointer;
    padding:0px;
    text-align:center;
    margin-left:0;
  }
/***************************************/
/**************登录/注册*******************/
.login_container #pane-second{
    padding-left: 90px;
    padding-top: 20px;
}
.login_container #pane-first{
  padding-left: 90px;
  padding-top: 20px;
}
/***************************************/
/***********首页菜谱****************** */

/**************热门话题*******************/
.Hot_topic .el-tabs__item{
    font-size:20px;
  }
  .Hot_topic .el-tabs__item.is-active {
      color: #ff6767 ;
  }
  .Hot_topic .el-tabs__active-bar{
  border:2px solid #ff6767;
  }
  .Hot_topic #pane-first,#pane-second{
    padding-left: 0;
    padding-top: 0;
  }
  .Hot_topic .el-tab-pane {
    padding-left: 0px;
    padding-top: 0px;
    float:left;
    width:100%;
  }
/***************************************/
/**************Rcom组件*******************/ 
.rcom #tab-first,.rcom #tab-second{
  font-size:20px;
}
.rcom .el-tabs__item:hover{
  color:#f00;
}
.rcom .el-tabs__item.is-active {
    color: #f00;
}
.rcom .el-tabs__active-bar {
  background-color:#f00;
}
.rcom .el-tabs__content {
    width:310px;
    height:500px;
}
/**************************************/ 
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#nav {
  padding: 0px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
/*********第二级导航栏********* */
#nav a.router-link-exact-active {
    color: #ff6767 ;
}
#nav a {
    font-weight: normal;
}

/**************************** */

</style>
