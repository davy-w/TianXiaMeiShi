<template>
   <div class="bottom_bar">
    <div class="logo"></div>
    <ul class="ulList" id="nav">
      <li v-for="(item,i) of list" :key="i"><router-link :to="item.url">{{item.title}}</router-link></li>
    </ul>
    <div class="search">
      <input type="text" class="inp">
      <button class="_btn">搜索</button>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list:[
        {title:"首页",url:"/"},
        {title:"菜谱",url:"Detalis"},
        {title:"食材",url:"Foods"},
        {title:"珍选",url:"Special"},
        {title:"健康",url:"Health"},
        {title:"展示",url:"Show"},
      ]
    }
  }
}
</script>
<style scoped>
  .bottom_bar{
    display: flex;
    align-items: center;
    width:990px;
    margin:0 auto;
    margin-top:50px;
    margin-left:0px !important;
  }
  .ulList{
    list-style: none;
    display: flex;
    margin: 0;
    padding:0;
    margin-left: 150px;
  }
  .ulList li{
    width: 60px;
    height: 60px;
    padding: 10px;
    padding-top: 0;
    padding-bottom: 5px;
    line-height: 60px;
    font-size: 20px;
  }
  .ulList li a{
    text-decoration: none;
    color: black;
  }
  .ulList li a:hover{
    color:#ff6767;
  }
  .logo{
    background-image: url(../../assets/bgimg/logo.png);
    width:110px;
    height: 53px;
  }
  
  .inp{
    width: 160px;
    height: 29px;
    margin-top: 6px;
    margin-bottom: 5px;
    border: 1px solid #CCCCCC;
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
    outline: 0;
  }
  ._btn{
    width:64px;
    height:29px;
    border:none;
    outline:none;
    padding:0;
    padding-left:19px;
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
    background:#999999 url(../../assets/search.png) no-repeat -2px -1px;
    color:#fff;
  }
  ._btn:hover{
    cursor:pointer;
    background:#f00 url(../../assets/search.png) no-repeat -2px -1px;
    color:#fff;
  }
  .search{
    margin-left:100px;
  }
  .ulList>li{
    position:relative;
  }
</style>