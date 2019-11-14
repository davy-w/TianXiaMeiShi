<template>
  <div class="special">
    <Navbar></Navbar>
    <div style="width: 990px; margin: 0px auto;">
      <BotNav></BotNav>
      <div class="mini_bar">
        <ul>
          <li v-for="(item,i) of mini_bar_list" :key="i">{{item}}</li>
          <li><span></span></li>
        </ul>
      </div>
      <div class="big_div">
        <div class="left_div">
          <img src="../../assets/special/1.jpg">
          <div class="left_div_bg">
            <h5>15款夏日必备</h5>
            <p>立夏了，气温不断升高，炎炎烈日，大家都喜欢吃点凉凉的东西!夏日消暑神器——雪糕模具</p>
            <p class="p2">See More</p>
          </div>
        </div>
        <div class="min_div">
          <img src="../../assets/special/2.jpg">
          <div class="min_div_bg">
            <h5>15款夏日必备</h5>
            <p>立夏了，气温不断升高，炎炎烈日，大家都喜欢吃点凉凉的东西!夏日消暑神器——雪糕模具</p>
            <p class="p2">See More</p>
          </div>
        </div>
        <div class="right_div">
          <img src="../../assets/special/3.jpg">
          <div class="right_div_bg">
            <h5>15款夏日必备</h5>
            <p>立夏了，气温不断升高，炎炎烈日，大家都喜欢吃点凉凉的东西!夏日消暑神器——雪糕模具</p>
            <p class="p2">See More</p>
          </div>
        </div>
      </div>
      <div class="sort">
        <ul>
          <li v-for="(item,i) of sort_list" :key="i" :style="{background: 'url(' + item.imgUrl + ') no-repeat 17px 7px' }">{{item.title}}</li>
        </ul>
      </div>
      <SpecialChild></SpecialChild>
    </div>
    <BackToTop></BackToTop>
    <Footer></Footer>
  </div>
  </div>
</template>
<script>
import Navbar from './Navbar.vue'
import BotNav from './BotNav.vue'
import Footer from './Footer.vue'
import Special_child from './Special_child.vue'
import BackToTop from './BackToTop.vue'
export default {
  data() {
    return {
      sort_list:[
        {title:"一周最热",imgUrl:require('../../assets/bgimg/z01.jpg')},
        {title:"人气菜谱",imgUrl:require('../../assets/bgimg/z02.jpg')},
        {title:"夏季菜谱",imgUrl:require('../../assets/bgimg/z03.jpg')},
        {title:"高颜值",imgUrl:require('../../assets/bgimg/z04.jpg')},
        {title:"家常菜谱",imgUrl:require('../../assets/bgimg/z05.jpg')},
        {title:"早餐",imgUrl:require('../../assets/bgimg/z06.jpg')},
        {title:"烘焙大全",imgUrl:require('../../assets/bgimg/z07.jpg')},
        {title:"亲子专区",imgUrl:require('../../assets/bgimg/z08.jpg')},
        {title:"快手菜",imgUrl:require('../../assets/bgimg/z09.jpg')},
        {title:"所有菜谱",imgUrl:require('../../assets/bgimg/z10.jpg')},
      ] ,
      mini_bar_list:["首页","热菜","凉菜","汤羹","主食","小吃","西餐","烘焙","饮品","零食","榨菜腌菜","自制食材","最新菜谱","浏览所有菜谱"]
    }
  },
  components:{
    Navbar,
    BotNav,
    Footer,
    "SpecialChild":Special_child,
    BackToTop
  },
  
}
</script>
<style scoped>
  .big_div{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    margin: 20px 0px;
  }
  .big_div>div{
    width:300px;
    height:300px;
    overflow:hidden;
    position:relative;
  }
  .left_div img,
  .min_div img,
  .right_div img{
    transition:all .5s linear;
  }
  .left_div:hover>img,
  .min_div:hover>img,
  .right_div:hover>img{
    transform:translateX(300px);
  }
  
 .left_div_bg,
 .min_div_bg,
 .right_div_bg{
   background:url(../../assets/special/1-1.jpg);
   position:absolute;
   width:300px;
   height:300px;
   z-index:-9999;
   top:0;left:0;
   opacity:0;
   transition:all .5s linear;
 }
 .min_div_bg{
    background:url(../../assets/special/1-2.jpg);
 }
 .right_div_bg{
    background:url(../../assets/special/1-3.jpg);
 }
 .left_div:hover>.left_div_bg,
 .min_div:hover>.min_div_bg,
 .right_div:hover>.right_div_bg{
    opacity:1;
  }
  .left_div_bg h5,
  .left_div_bg p,
  .min_div_bg h5,
  .min_div_bg p,
  .right_div_bg h5,
  .right_div_bg p{
    background:rgba(0,0,0,.3);
    width:100%;
    height:30px;
    line-height:30px;
    color:#ffffff;
  }
  .left_div_bg h5,
  .min_div_bg h5,
  .right_div_bg h5{
    margin-top:50px;
  }
  .left_div_bg>p,
  .min_div_bg>p,
  .right_div_bg>p{
    height:90px;
    font-size:15px;
  }
  .left_div_bg>.p2,
  .min_div_bg>.p2,
  .right_div_bg>.p2{
    height:30px;
  }
   .sort ul{
    list-style:none;
    padding:0;
    margin:0;
    width: 100%;
    height: 100px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    box-sizing: border-box;
    margin-top: 20px;
  }
  .sort ul li{
    width: 90px;
    height: 100px;
    text-align: center;
    box-sizing: border-box;
    padding-top: 70px;
    font-size: 15px;
    color: #333333;
  }
  .sort ul li:hover{
    color:#f00;
    cursor:pointer;
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
  left: 460px;
  background:url(../../assets/1.png)
}
</style>