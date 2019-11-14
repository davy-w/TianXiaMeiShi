<template>
<div class="top">
<div style="width: 990px; margin: 0px auto;">
<MiniBar></MiniBar>
  <div class="container">
    <div class="row top" style="margin-top:20px;">
      <div class="col-md-12 top-1">
        <h2 style="text-align:center;">{{list.title}}</h2>
        <img :src="'http://127.0.0.1:3000/img/'+list.img_url" style="width:640px;height:420px;"/>
        <h6 class="mt-4">“{{list.content}}”</h6>
        <p class="p-1">○食材明细</p>
        <h3>主料</h3>
        <div class="row bottom1">
            <div class="col-md-3">
                <h5 class="mt-4 h5-1">黄瓜</h5>
                <p class="p-31 m-0">1根</p>
                <h5 class="mt-4 h5-1">白芝麻</h5>
                <p class="p-31 m-0">适量</p>
            </div>
            <div class="col-md-3">
                <h5 class="mt-4 h5-1">豌豆凉粉</h5>
                <p class="p-31 m-0">150克</p>
            </div>
            <div class="col-md-3">
                <h5 class="mt-4 h5-1">水</h5>
                <p class="p-31 m-0">900克</p>
            </div>
            <div class="col-md-3">
                <h5 class="mt-4 h5-1">辣椒调味汁</h5>
                <p class="p-31 m-0">适量</p>
            </div>
        </div>
        <h3 class="mt-4 m-1">辅料</h3>
        <div class="row bottom">
            <div class="col-md-3">
                <h5 class="mt-4 h5-1">蒜米</h5>
                <p class="p-31 m-0">2个</p>
            </div>
            <div class="col-md-3">
            </div>
            <div class="col-md-3">
            </div>
            <div class="col-md-3">
            </div>
        </div>
        <div class="row bottom">
            <div class="col-md-3">
                <h5 class="mt-4 h5-1">香辣</h5>
                <p class="p-31 m-0">口味</p>
            </div>
            <div class="col-md-3">
                <h5 class="mt-4 h5-1">煮</h5>
                <p class="p-31 m-0">工艺</p>
            </div>
            <div class="col-md-3">
                <h5 class="mt-4 h5-1">十分钟</h5>
                <p class="p-31 m-0">耗时</p>
            </div>
            <div class="col-md-3">
                <h5 class="mt-4 h5-1">简单</h5>
                <p class="p-31 m-0">难度</p>
            </div>
        </div>
        <p class="p-2">○黄瓜凉粉条的做法步骤</p>
        <div class="media p-3">
          <img style="width: 8rem;" class="mr-3 rounded" src="../../assets/img/a1.jpg"/>
          <div class="media-body">
            <h4>①</h4>
            <p>黄瓜清洗干净用瓜刨刨出绿色的外皮</p>
          </div>
        </div>
        <div class="media p-3">
          <img style="width: 8rem;" class="mr-3 rounded" src="../../assets/img/a1.jpg"/>
          <div class="media-body">
            <h4>②</h4>
            <p>加100克的水放入东菱果汁杯打成黄瓜汁</p>
          </div>
        </div>
        <div class="media p-3">
          <img style="width: 8rem;" class="mr-3 rounded" src="../../assets/img/a1.jpg"/>
          <div class="media-body">
            <h4>③</h4>
            <p>把黄瓜汁和150克豌豆凉粉放入大碗</p>
          </div>
        </div>
        <div class="media p-3">
          <img style="width: 8rem;" class="mr-3 rounded" src="../../assets/img/a1.jpg"/>
          <div class="media-body">
            <h4>④</h4>
            <p>再加入50克水混合成豌豆凉粉面浆</p>
          </div>
        </div>
        <div class="media p-3">
          <img style="width: 8rem;" class="mr-3 rounded" src="../../assets/img/a1.jpg"/>
          <div class="media-body">
            <h4>⑤</h4>
            <p class="m-0">小锅里加750克水烧开，倒入调好的豌豆凉粉面</p>
            <p class="m-0">浆，不停的搅拌，一直蒸到变成青色凉粉</p>
          </div>
        </div>
        <div class="media p-3">
          <img style="width: 8rem;" class="mr-3 rounded" src="../../assets/img/a1.jpg"/>
          <div class="media-body">
            <h4>⑥</h4>
            <p>豌豆凉粉倒入耐高温的玻璃容器里，这里装了两碗</p>
          </div>
        </div>
        <div class="media p-3">
          <img style="width: 8rem;" class="mr-3 rounded" src="../../assets/img/a1.jpg"/>
          <div class="media-body">
            <h4>⑦</h4>
            <p>黄瓜豌豆凉粉凝固后切成细长条的凉粉丝，也可以切成方块</p>
          </div>
        </div>
        <div class="media p-3">
          <img style="width: 8rem;" class="mr-3 rounded" src="../../assets/img/a1.jpg"/>
          <div class="media-body">
            <h4>⑧</h4>
            <p class="m-0">油泼辣子两勺，香醋一汤匙，生抽2匙，根据</p>
            <p class="m-0">口味调制一碗辣椒调味汁，我用的是做凉拌黄瓜</p>
            <p class="m-0">的调味汁</p>
          </div>
        </div>
        <div class="media p-3">
          <img style="width: 8rem;" class="mr-3 rounded" src="../../assets/img/a1.jpg"/>
          <div class="media-body">
            <h4>⑨</h4>
            <p>凉粉丝上淋上调味酱汁，撒上蒜泥和白芝麻就可</p>
            <p class="m-1">以开吃了</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <backtop></backtop>
  </div>
</div>
</template>
<script>
import BackToTop from './BackToTop.vue'
import Navbar from './Navbar.vue'
import BotNav from './BotNav.vue'
import MiniBar from './MiniBar.vue'
export default {
  data() {
    return {
      list:[]
    }
  },
  components:{
    "backtop":BackToTop,
    Navbar,
    BotNav,
    MiniBar
  },
  created() {
    // var url="details";
    // var obj={lid:location.search.split("=")[1]};
    // this.axios.get(url,{params:obj}).then(result=>{
    //   console.log(result);
    // })
    this.getParams();
  },
  methods: {
    getParams(){
      var id=this.$route.query.id;
      //console.log("这里这里*********************"+id);
      var url="details";
      var obj={lid:id};
      this.axios.get(url,{params:obj}).then(result=>{
        this.list=result.data[0];
        //console.log("list:"+this.list);
        console.log(result.data[0])
        })
    }
  },
}
</script>
<style scoped>
  .container{
    width:990px;
    margin:0 auto;
  }
  .top{
      text-align: center;
  }
  .top-1{
      text-align: center;
  }
  .p-1{
      font-size: 25px;
      color: red;
      margin-right: 653px;
      margin-top: 20px;
  }
  .p-2{
      font-size: 25px;
      color: red;
      margin-right: 516px;
      margin-top: 20px;
  }
  .fie{
      border-radius: 10px;
      border: 1px solid #ddd;
      padding: 0 0 10px 0;
      margin: 0 0 15px 0;
  }
  .bottom{
      border:1px solid #ccc;
      width: 802px;
      height: 100px;
      border-radius: 10px;
      margin: 0 auto;
      margin-top: 40px;
  }
  .bottom1{
      border:1px solid #ccc;
      width: 802px;
      height: 170px;
      border-radius: 10px;
      margin: 0 auto;
  }
  .h5-1:hover{
    color: red;
  }
  .p-31{
      color: #ccc;
  }
  .media-body{
      text-align: left;
  }
  .p-3{
      margin-left: 47px;
  }
  .bottom_bar{
    margin-left:143px;
  }
</style>