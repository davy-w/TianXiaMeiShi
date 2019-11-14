<template>
  <div class="special_child">
    <div class="nav"><span>发现尖货</span></div>
    <ul>
      <li v-for="(item,i) of foods_list" :key="i">
        <i class="img"><img :src="item.imgUrl"></i>
        <p class="title">{{item.title}}</p>
        <p class="price">￥{{item.price.toFixed(2)}}</p>
        <p class="_btn">购买</p>
      </li>
    </ul>
    <span class="loadmore">加载更多</span>
  </div>
</template>
<script>
export default {
  data() {
    return {
      foods_list:[
        {imgUrl:require("../../assets/special/x4.jpg"),title:"妙语蜂蜜",price:88.00},
        {imgUrl:require("../../assets/special/x5.jpg"),title:"四川懒人火锅",price:19.90},
        {imgUrl:require("../../assets/special/x6.jpg"),title:"北海道抹茶牛奶糖",price:22.00},
        {imgUrl:require("../../assets/special/x7.jpg"),title:"即食水果谷物粥",price:35.80},
        {imgUrl:require("../../assets/special/x8.jpg"),title:"烤箱家用披萨盘",price:58.00},
        {imgUrl:require("../../assets/special/x9.jpg"),title:"花生蛋松酥糖",price:12.00},
        {imgUrl:require("../../assets/special/x10.jpg"),title:"无添加鸡蛋饼干",price:9.80},
        {imgUrl:require("../../assets/special/x11.jpg"),title:"圣家椰蓉",price:9.50},
        {imgUrl:require("../../assets/special/x12.jpg"),title:"芝焙椰蓉",price:10.50},
        {imgUrl:require("../../assets/special/x13.jpg"),title:"敬送椰蓉",price:10.50},
        {imgUrl:require("../../assets/special/x14.jpg"),title:"抹茶椰蓉",price:9.80},
        {imgUrl:require("../../assets/special/x15.jpg"),title:"银耳莲子羹",price:5.80},
        {imgUrl:require("../../assets/special/x16.jpg"),title:"广东冰姨爽口汤",price:3.80},
        {imgUrl:require("../../assets/special/x17.jpg"),title:"安阳杂粮汤",price:6.80},
        {imgUrl:require("../../assets/special/x18.jpg"),title:"蒸煮电饭煲",price:128.00},
        {imgUrl:require("../../assets/special/x19.jpg"),title:"云南菠萝",price:38.00},
        {imgUrl:require("../../assets/special/x20.jpg"),title:"海南金钻菠萝",price:40.00},
        {imgUrl:require("../../assets/special/x1.jpg"),title:"海南无眼金菠萝",price:45.00},
        {imgUrl:require("../../assets/special/x2.jpg"),title:"创意陶瓷斗笠碗",price:36.00},
        {imgUrl:require("../../assets/special/x3.jpg"),title:"萌猫陶瓷大碗",price:40.80}
      ]
    }
  },
}
</script>
<style scoped>
  .special_child ul{
    list-style:none;
    margin:0;
    padding:0;
    display:flex;
    flex-wrap:wrap;
  }
   .special_child ul li{
     width:247px;
     height:320px;
     padding:10px;
   }
  .special_child .img,
  .special_child .img img{
    width:220px;
    height:220px;
  }
  .special_child .title,
  .special_child .price{
    margin-bottom:5px;
    height:21px;
  }
  .special_child .title{
    color:#7f7a7a;
  }
   .special_child .price{
    color:#ff6767;
    font-weight: bold;
    font-size: 16px;
  }
  .special_child ._btn{
    margin:0;
    width:60px;
    height:25px;
    line-height:25px;
    font-size:14px;
    border:1px solid #ff6767;
    border-radius:12px;
    margin:0 auto;
  }
  .special_child ._btn:hover{
    background:#ff6767;
    color:#fff;
    cursor:pointer;
  }
  .special_child .loadmore{
    display:block;
    width:100%;
    height:32px;
    line-height:32px;
    text-align: center;
    font-size: 14px;
    color: #333;
    background-color: #f8f8f8;
    cursor: pointer;
    margin-top:23px;
  }
  .special_child .nav{
    height:37px;
    border-bottom:1px solid #ccc;
    line-height:37px;
  }
  .special_child .nav span{
    font-size:20px;
    display:block;
    color:#ff6767;
    border-bottom:2px solid #ff6767;
  }
  .special_child ul{
    margin:0 auto;
  }
   .special_child ul li i.img{
     overflow:hidden;
     display:block;
     width:220px;
     height:220px;
   }
  .special_child ul li i.img img{
    transition:all .5s ease-in-out;
  }
  .special_child ul li:hover i.img img{
    transform:scale(1.1)
  }
</style>