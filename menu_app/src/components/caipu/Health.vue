<template>
  <div class="health">
    <Navbar></Navbar>
    <div style="width: 990px; margin: 0px auto;">
      <BotNav></BotNav>
      <div class="mini_bar">
        <ul>
          <li v-for="(item,i) of mini_bar_list" :key="i">{{item}}</li>
          <li><span></span></li>
        </ul>
      </div>
      <div class="banner">
        <div class="left_btn" @click="prveBtn"><img src="../../assets/leftBtn.png"></div>
        <ul :style="myClass">
          <li v-for="(item,i) of list" :key="i"><img :src="item.imgUrl" :title="item.title"></li>
        </ul>
        <div class="right_btn" @click="nextBtn"><img src="../../assets/rightBtn.png"></div>
      </div>
      <video src="../../assets/health.mp4" width="990px" loop autoplay height="500px" controls muted></video>
    </div>
    <BackToTop></BackToTop>
    <Footer></Footer>
  </div>
</template>
<script>
import Navbar from './Navbar.vue'
import BotNav from './BotNav.vue'
import Footer from './Footer.vue'
import MiniBar from './MiniBar.vue'
import BackToTop from './BackToTop.vue'
export default {
  data() {
    return {
      list:[
        {title:"立夏养生，10种蔬菜清热解暑",imgUrl:require("../../assets/health/1.jpg")},
        {title:"3款食疗法，改善失眠更好梦",imgUrl:require("../../assets/health/2.jpg")},
        {title:"春天肝火旺，吃什么降火",imgUrl:require("../../assets/health/3.jpg")},
        {title:"立夏养生先养胃，这样做没错",imgUrl:require("../../assets/health/4.jpg")},
        {title:"天气炎热，但这些人不适合喝绿豆汤",imgUrl:require("../../assets/health/5.jpg")},
        {title:"夏天补脾，这些食谱可以吃",imgUrl:require("../../assets/health/6.jpg")},
        {title:"为肾脏保驾护航，常吃5种食物",imgUrl:require("../../assets/health/7.jpg")},
        {title:"备孕必看：这些食物才有利于怀孕！",imgUrl:require("../../assets/health/8.jpg")},
        {title:"小心，5个原因会让便秘找上门",imgUrl:require("../../assets/health/9.jpg")},
        {title:"延年益寿的4种长寿菜",imgUrl:require("../../assets/health/10.jpg")},
        {title:"脸上开始冒痘痘，降火很重要",imgUrl:require("../../assets/health/11.jpg")},
        {title:"调理肾虚避免2大误区，分清情况再调理",imgUrl:require("../../assets/health/12.jpg")},
      ],
      mini_bar_list:["首页","热菜","凉菜","汤羹","主食","小吃","西餐","烘焙","饮品","零食","榨菜腌菜","自制食材","最新菜谱","浏览所有菜谱"],
      i:0,
      c:0,
      myClass:{
        marginLeft:0
      }
    }
  },
   components:{
    Navbar,
    BotNav,
    Footer,
    MiniBar,
    BackToTop
  },
  methods: {
    prveBtn(){
      if(this.i>0){
        this.i--;
        //this.myClass.marginLeft+=990+"px";
        //var c=this.myClass.marginLeft.slice(1,-2);
        this.c+=990;
        this.myClass.marginLeft=this.c+"px"
        // console.log(this.i);
        // console.log(this.myClass.marginLeft)
        // console.log(this.c)
      }
    },
    nextBtn(){
      if(this.i<3){
        this.i++;
        //  this.myClass.marginLeft+=-990+"px";
        //console.log(this.i)
        // console.log(this.myClass.marginLeft)
        this.c-=990;
        this.myClass.marginLeft=this.c+"px";
      }
    }
  },
}
</script>
<style scoped>
  .banner{
    width:100%;
    overflow:hidden;
    position:relative;
    margin:0 auto;
    margin-top:20px;
  }
  .banner ul{
    list-style:none;
    margin:0;
    padding:0;
    display:flex;
    flex-wrap:nowrap;
    transition:all .5s linear;
  }
  .banner ul li{
    width:310px;
    height:230px;
    margin-right:20px;
  }
  .banner ul li img{
    width:310px;
  }
  .left_btn,
  .right_btn{
    width: 30px;
    height: 50px;
    background: rgba(0,0,0,0.3);
    text-align: center;
    line-height: 48px;
    cursor: pointer;
    position:absolute;
    top:90px;
    left:10px;
    display:none;
  }
  .right_btn{
    top:90px;
    left:950px;
  }
  .left_btn:hover,
  .right_btn:hover{
    background:gray;
  }
  .banner:hover .left_btn,
  .banner:hover .right_btn{
    display:block;
  }
  .banner ul li:first-child{
    margin-left:10px;
  }
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
  left: 520px;
  background:url(../../assets/1.png)
}
</style>