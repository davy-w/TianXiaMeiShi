<template>
  <div class="detalis_main">
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
        <div class="banner1">
          <ul>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
          </ul>
          <span class="banner1_bg"></span>
        </div>
        <div class="banner2">
          <ul>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
          </ul>
          <span class="banner2_bg"></span>
        </div>
        <div class="banner3">
          <ul>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
          </ul>
          <span class="banner3_bg"></span>
        </div>
      </div>
      <div class="sort">
        <ul>
          <li v-for="(item,i) of sort_list" :key="i" :style="{background: 'url(' + item.imgUrl + ') no-repeat 17px 7px' }">{{item.title}}</li>
        </ul>
      </div>
      <MenuShow></MenuShow>
    </div>
    <BackToTop></BackToTop>
    <Footer></Footer>
  </div>
</template>
<script>
import Navbar from './Navbar.vue'
import BotNav from './BotNav.vue'
import Footer from './Footer.vue'
import MenuShow from './MenuShow.vue'
import BackToTop from './BackToTop.vue'
export default {
  data() {
    return {
      sort_list:[
        {title:"一周最热",imgUrl:require('../../assets/bgimg/r01.jpg')},
        {title:"人气菜谱",imgUrl:require('../../assets/bgimg/r02.jpg')},
        {title:"夏季菜谱",imgUrl:require('../../assets/bgimg/r03.jpg')},
        {title:"高颜值",imgUrl:require('../../assets/bgimg/r04.jpg')},
        {title:"家常菜谱",imgUrl:require('../../assets/bgimg/r05.jpg')},
        {title:"早餐",imgUrl:require('../../assets/bgimg/r06.jpg')},
        {title:"烘焙大全",imgUrl:require('../../assets/bgimg/r07.jpg')},
        {title:"亲子专区",imgUrl:require('../../assets/bgimg/r08.jpg')},
        {title:"快手菜",imgUrl:require('../../assets/bgimg/r09.jpg')},
        {title:"所有菜谱",imgUrl:require('../../assets/bgimg/r10.jpg')},
      ] ,
      mini_bar_list:["首页","热菜","凉菜","汤羹","主食","小吃","西餐","烘焙","饮品","零食","榨菜腌菜","自制食材","最新菜谱","浏览所有菜谱"],
      index:1
    }
  },
  components:{
    Navbar,
    BotNav,
    Footer,
    MenuShow,
    BackToTop
  }
}
</script>
<style scoped>
  .ulList li:nth-child(2){color:#f00;}
  .banner{
    width: 100%;
    height: 225px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    box-sizing: border-box;
    margin-top: 20px;
  }
  .banner>div{
    width: 300px;
    height: 225px;
    box-sizing: border-box;
    overflow: hidden;
    position: relative;
  }
  .banner ul{
    list-style: none;
    overflow: hidden;
    margin: 0;
    padding: 0;
    position: relative;
    z-index: 5;
    list-style:none;
  }
  .banner ul li{
    position: relative;
    float: left;
    width: 149px;
    height: 112.5px;
    overflow: hidden;
  }
  .banner1 ul li span,.banner2 ul li span,.banner3 ul li span{
		display:inline-block;
		width: 150px;height: 112.5px;
		background: url("../../assets/5.jpg") no-repeat 0px -40px;
		transition-duration:1s;
	}
	.banner2 ul li span{
		background: url("../../assets/6.jpg") no-repeat 0px -40px;
	}
	.banner3 ul li span{
		background: url("../../assets/7.jpg") no-repeat 0px -40px;
	}
	.banner1 ul li:nth-child(2) span{
		background: url("../../assets/5.jpg") no-repeat -146px -40px;
	}
	.banner2 ul li:nth-child(2) span{
		background: url("../../assets/6.jpg") no-repeat -146px -40px;
	}
	.banner3 ul li:nth-child(2) span{
		background: url("../../assets/7.jpg") no-repeat -146px -40px;
	}
	.banner1 ul li:nth-child(3) span{
		background: url("../../assets/5.jpg") no-repeat 0px -153px;
	}
	.banner2 ul li:nth-child(3) span{
		background: url("../../assets/6.jpg") no-repeat 0px -153px;
	}
	.banner3 ul li:nth-child(3) span{
		background: url("../../assets/7.jpg") no-repeat 0px -153px;
	}
	.banner1 ul li:last-child span{
		background: url("../../assets/5.jpg") no-repeat -146px -153px;
	}
	.banner2 ul li:last-child span{
		background: url("../../assets/6.jpg") no-repeat -146px -153px;
	}
	.banner3 ul li:last-child span{
		background: url("../../assets/7.jpg") no-repeat -146px -153px;
	}
	.banner1 .banner1_bg,.banner2 .banner2_bg,.banner3 .banner3_bg{
		position: absolute;
		top:0;left:0;
		width: 300px;height: 225px; 
		background: url("../../assets/11.jpg") no-repeat;
		z-index:1;
		transform:scale(1.5);
		transition-duration:1s;
	}
	.banner2 .banner2_bg{background: url("../../assets/22.jpg") no-repeat;}
	.banner3 .banner3_bg{background: url("../../assets/33.jpg") no-repeat;}
	.banner1:hover .banner1_bg,.banner2:hover .banner2_bg,.banner3:hover .banner3_bg{
		transform:scale(1);
		transition-duration:1s;
	}
	.banner1:hover ul li:nth-child(1) span,.banner2:hover ul li:nth-child(1) span,.banner3:hover ul li:nth-child(1) span{
		transform:translate(0,113px);
		transition-duration:1s;
	}
	.banner1:hover ul li:nth-child(2) span,.banner2:hover ul li:nth-child(2) span,.banner3:hover ul li:nth-child(2) span{
		transform:translate(-150px,0); 
		transition-duration:1s; 
	}
	.banner1:hover ul li:nth-child(3) span,.banner2:hover ul li:nth-child(3) span,.banner3:hover ul li:nth-child(3) span{
		transform:translate(150px,0); 
		transition-duration:1s; 
	}
	.banner1:hover ul li:nth-child(4) span,.banner2:hover ul li:nth-child(4) span,.banner3:hover ul li:nth-child(4) span{
		transform:translate(0px,-112.5px); 
		transition-duration:1s; 
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
    left: 340px;
    background:url(../../assets/1.png)
  }
</style>