<template>
  <div>
    <Navbar></Navbar>
    <div style="width: 990px; margin: 0px auto;">
      <BotNav></BotNav>
      <div class="mini_bar">
        <ul>
          <li v-for="(item,i) of mini_bar_list" :key="i">{{item}}</li>
          <li><span></span></li>
        </ul>
      </div>
      <div class="show_menu">
        <span class="title">热菜展示</span>
        <hr>
      </div>
      <ul class="banner">
        <li v-for="(item,i) of bgUrl" :key="i">
          <img :src="item" class="animated flip img">
        </li>
      </ul>
    </div>
    <BackToTop></BackToTop>
    <Footer></Footer>
  </div>
</template>
<script>
import Navbar from './Navbar.vue'
import BotNav from './BotNav.vue'
import Footer from './Footer.vue'
import BackToTop from './BackToTop.vue'
export default {
  data() {
    return {
      mini_bar_list:["首页","热菜","凉菜","汤羹","主食","小吃","西餐","烘焙","饮品","零食","榨菜腌菜","自制食材","最新菜谱","浏览所有菜谱"],
      bgUrl:[
        require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg'),require('../../assets/show/11.jpg')]
    }
  },
  components:{
    Navbar,
    BotNav,
    Footer,
    BackToTop
  }
}
</script>
<style scoped>
  .mini_bar ul{
    width: 100%;
    height: 35px;
    border-top: 1px solid #FF6767;
    border-bottom: 1px solid #FF6767;
    list-style:none;
    padding:0;
    margin:0;
    position:relative;
  }
  .mini_bar ul li{
    float: left;
    width: 54px;
    height: 35px;
    line-height: 35px;
    text-align: center;
    font-size: 14px;
    border:none;
  }
  .mini_bar ul li:nth-child(10)~li{
    width:80px;
  }
  .mini_bar ul li:nth-child(14){
    width:100px !important;
    float:right;
  }
  .mini_bar span{
    position: absolute;
    width: 18px;
    height: 13px;
    bottom: 32px;
    left: 580px;
    background:url(../../assets/1.png)
  }
  .show_menu .title{
    font-size: 20px;
    display: block;
    color: #ff6767;
    border-bottom: 2px solid #ff6767;
    height:39px;
    width:80px;
  }
  .show_menu{
    height: 37px;
    line-height: 37px;
    text-align:left;
    border-bottom: 1px solid #ccc;
    margin-top:20px;
  }
  .banner{
    list-style:none;
    display:flex;
    padding:0;
    margin:0;
    flex-wrap:wrap;
    margin-top:20px;
  }
  .banner li{
    padding:10px;
  }
  .banner li img{
    height:220px;
    width:220px;
  }
  
</style>