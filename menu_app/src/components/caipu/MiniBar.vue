<template>
  <div class="mini_bar">
    <ul>
      <li v-for="(item,i) of mini_bar_list" :key="i">{{item}}</li>
      <li><span></span></li>
    </ul>
  </div>
</template>
<script>
export default {
  data() {
    return {
      mini_bar_list:["首页","热菜","凉菜","汤羹","主食","小吃","西餐","烘焙","饮品","零食","榨菜腌菜","自制食材","最新菜谱","浏览所有菜谱"]
    }
  },
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
  }
  .mini_bar ul li:nth-child(10)~li{
    width:80px;
  }
  .mini_bar ul li:nth-child(14){
    width:100px !important;
    float:right;
  }
  span{
    position: absolute;
    width: 18px;
    height: 13px;
    bottom: 32px;
    left: 284px;
    background:url(../../assets/1.png)
  }
</style>