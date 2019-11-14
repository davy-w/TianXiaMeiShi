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
      <div class="img_div">
        <img src="../../assets/caipu.jpg">
      </div>
      <div class="main_foods">
        <div class="foods_family">
          <ul>
            <li v-for="(item,i) of foods_family_list" :key="i">{{item}}</li>
          </ul>
        </div>
        <div class="foods">
          <ul>
            <li v-for="(item,i) of foods_list" :key="i">{{item}}</li>
          </ul>
        </div>
      </div>
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
      foods_family_list:["时令与热门","肉禽类","水产类","蔬菜类","果品类","米面豆乳","调味品","药食"],
      foods_list:["鸡肉","鸡翅","鸡蛋","牛肉","猪肉","小龙虾","皮皮虾","螃蟹","虾","扇贝","生蚝","黄瓜","茄子","西红柿","土豆","黑木耳","秋葵","猪肉","排骨","里脊","猪蹄","五花肉","肋排","牛肉","牛排","肥牛","羊肉","猪肝","猪肘","火腿","香肠","培根","腊肉","肉松","整鸡","鸡肉","鸡翅","鸡腿","乌鸡","鸭肉","乳鸽","鸡蛋","鸭蛋","鸭脖","鹅肝","鹌鹑","草鱼","鲤鱼","鲫鱼","带鱼","鲈鱼","黄花鱼","鳕鱼","鲅鱼","鲳鱼","鳗鱼","三文鱼","胖头鱼","罗非鱼","秋刀鱼","多宝鱼","鱼籽","鱼尾","鱼丸","小龙虾","虾","龙虾","螃蟹","大闸蟹","皮皮虾","扇贝","生蚝","蛤蜊","蛏子","鲍鱼","牡蛎","鱿鱼","海参","还带","紫菜","海蜇","更多","白菜","油菜","青菜","芹菜","菠菜","韭菜","大白菜","娃娃菜","芦蒿","莴笋","油麦菜","芦笋","土豆","红薯","芋头","洋葱","萝卜","山药","藕","豆角","茄子","青椒","菜花","西红柿","红豆","秋葵","毛豆","四季豆","黄瓜","冬瓜","西葫芦","黑木耳","蘑菇","香菇","金针菇","杏鲍菇","茭白","竹笋","荠菜","香椿","马兰头","更多","菠萝","草莓","芒果","木瓜","牛油果","百香果","栗子","花生","腰果","核桃","芝麻","莲子","枸杞","桂圆","黑芝麻","红枣蓝莓","红枣","更多","糯米","小米","荞麦面","玉米","燕麦","米粉","面条","意大利面","糯米粉","红豆","绿豆","黄豆","豆腐","豆浆","腐竹","油豆腐","烤麸","豆皮","淡奶油","奶酪","酸奶","牛奶","芝士","巧克力","粉皮","粉丝","年糕","粉条","河粉","更多","番茄沙司","豆瓣酱","豆瓣","豆豉","芥末酱","番茄酱","蜂蜜","酒糟","酱油","鸡精","干豆酱","燕窝","阿胶","雪蛤","茯苓","党参","当归","枣","百合","黄芪","花椒","银耳","莲子","核仁","杏仁","更多"],
      mini_bar_list:["首页","热菜","凉菜","汤羹","主食","小吃","西餐","烘焙","饮品","零食","榨菜腌菜","自制食材","最新菜谱","浏览所有菜谱"],
    }
  },
  components:{
    Navbar,
    BotNav,
    Footer,
    MiniBar,
    BackToTop
  }
}
</script>
<style scoped>
  ul{
    list-style:none;
    margin:0;
    padding:0;
    font-size:20px;
    text-align:center;
  }
  li{
    border: 1px solid #ddd;
    width:141px;
    height:83px;
    line-height:83px;
  }
  li:hover{
    color:#f00;
    background-color:#f5f5f5;
    cursor:pointer;
  }
  .img_div{
    margin-top:20px;
  }
  .main_foods{
    display:flex;
    margin-top:20px;
  }
  .foods_family{
    width:141px;
    background-color: #f5f5f5;
  }
  .foods_family ul li:first-child{
    height:249px;
    line-height:249px;
  }
  .foods_family ul li:last-child,
  .foods_family ul li:nth-child(7){
    height:166px;
    line-height:166px;
  }
  .foods_family ul li:nth-child(2),
  .foods_family ul li:nth-child(6){
    height:415px;
    line-height:415px;
  }
  .foods_family ul li:nth-child(3){
    height:498px;
    line-height:498px;
  }
  .foods_family ul li:nth-child(4){
    height:581px;
    line-height:581px;
  }
  .foods_family ul li:nth-child(5){
    height:249px;
    line-height:249px;
  }
  .foods{
    width:849px;
  }
  .foods ul{
    display:flex;
    flex-wrap:wrap;
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
    left: 400px;
    background:url(../../assets/1.png)
  }
</style>