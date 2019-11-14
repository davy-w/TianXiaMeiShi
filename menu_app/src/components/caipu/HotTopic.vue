<template>
  <div class="Hot_topic">
    <el-tabs v-model="activeName" @tab-click="handleClick">
      <el-tab-pane label="热门话题" name="first" >
        <div class="hot-list">
          <ul v-for="(item,i) of list" :key="i">
            <li>
              <div class="list-top">
                <a>
                  <img :src="'http://127.0.0.1:3000/img/'+item.avatar">
                </a>
                <div class="list-title">
                  <a href="">{{item.uname}}</a>
                  <p>{{item.sendtime}}小时前</p>
                </div>
              </div>
              <div class="list-bottom">
                <div class="content">
                  <a>
                    <strong>{{item.title}}</strong>
                    <p class="text">{{item.content}}</p>
                  </a>
                </div>
                <a class="img" >
                  <img :src="'http://127.0.0.1:3000/img/'+item.imgurl_1">
                  <img :src="'http://127.0.0.1:3000/img/'+item.imgurl_2">
                  
                </a>
                <div class="block">
                  <el-rate
                    v-model="value"
                    disabled
                    show-score
                    text-color="#ff9900"
                    score-template="{value}" >{{item.val}}
                  </el-rate>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </el-tab-pane>
      <el-tab-pane label="精华日志" name="second">
        <div class="essence-log">
          <ul v-for="(item,i) of lists" :key="i">
            <li>
              <a>
                <span class="imgbox">
                  <img :src="'http://127.0.0.1:3000/img/'+item.img_url"  @click="getId" :data-id="item.lid" style="cursor:pointer">
                </span>
                <p>{{item.title}}</p>
              </a>
              <a>{{item.u}}</a>
            </li>
          </ul>
        </div>
      </el-tab-pane>
    </el-tabs>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        activeName: 'first',
        value:3.6,
        list:[],
        lists:[],
        row1:[]
      };
    },
    created() {
      this.loadMore();
      this.loadMore1();
    },
    methods: {
      loadMore(){
        //console.log(123);
        //1.创建url
        var url="HotTopic";
        //2.发送ajax请求
        this.axios.get(url).then(result=>{
          //console.log(result);
          this.list=result.data.data;
          console.log(this.list)
          console.log(this.list.length)
          for(var i=0;i<this.list.length;i++){
            var row1=this.list[i].imgurl_1;
            console.log(this.list[i].imgurl_1);
            console.log(this.list[i].imgurl_2);
            console.log(this.list[i].imgurl_3);
            console.log(this.list[i].imgurl_4);
          }
          console.log(this.list[0].imgurl_1)
        })
      },
      loadMore1(){
        //console.log(123);
        //1.创建url
        var url="log";
        //2.发送ajax请求
        this.axios.get(url).then(result=>{
          //console.log(result);
          this.lists=result.data.data;
          //console.log(this.lists)
        })
      },
      handleClick(tab, event) {
        console.log(tab, event);
      },
      getId(e){
        this.$router.push({path:"/Sub",query:{id:e.target.dataset.id}});
        console.log(e.target.dataset.id);
      }
    }
  };
</script>
<style scoped>
  ul{
    list-style:none;
  }
  .Hot_topic{
    width: 990px;
    overflow: hidden;
    margin: 30px auto;
    text-align:left;
  }
  .Hot_topic .hot-list{
    padding: 0;
    margin: 5px 0 0 -32px;
    clear: both;
  }
 
  .Hot_topic .hot-list li{
    width: 50%;
    float: left;
    height: 300px;
    overflow: hidden;
  }
  .Hot_topic .hot_list .list-top{
    height: 40px;
  }
  .Hot_topic .list-top img{
    width: 40px;
    height: 40px;
    border-radius: 50%;
    float: left;
    margin: 0 10px 0 0;
  } 
  .Hot_topic .list-top .list-title{
    float: left;
    width: 85%;
    text-align:left;
  }
  .Hot_topic .list-top .list-title a{
    color:#000;
    font-size:14px;
  }
  .Hot_topic .list-bottom{
    float: left;
  }
  .list-bottom .content{
    max-height:50px;
    white-space:normal; 
    width:400px;
  }
  .list-bottom .content .text{
    font-size:12px;
  }
  .list-bottom img{
    float: left;
    width: 100px;
    height: 100px;
    margin: 10px 10px 0 0;
  }
  .list-bottom .block{
    clear: both;
    float: left;
    padding: 10px 0 0;
    font-size: 12px;
    color: #666;
    line-height: 100%;
  }
  .Hot_topic .essence-log{
    padding: 0;
    margin: 0 0 0 -32px;
    clear: both;
  }
  .Hot_topic .essence-log li{
    float: left;
    margin: 5px 17px 5px 0;
    text-align: center;
    width: 225px;
    height: 248px;
    overflow: hidden;
  }
  .Hot_topic .essence-log li a{
    color:#000;
  }
  .Hot_topic .essence-log li a:hover{
    color:red;
  }
  .Hot_topic .essence-log li a .imgbox {
    display: block;
    overflow: hidden;
    text-decoration: none;
    position: relative;
  }
  .Hot_topic .essence-log .imgbox img{
    display: block;
    width: 100%;
    height: 173px;
    transition: all 1s
  }
  .Hot_topic .essence-log a img:hover{
    transform:scale(1.1);
  }
  .Hot_topic .essence-log li a p{
    font-size: 18px;
    line-height: 120%;
    padding-top: 8px;
    margin-bottom:5px;
  }
</style>