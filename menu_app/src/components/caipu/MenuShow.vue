<template>
  <div class="Hot_topic">
    <el-tabs v-model="activeName" @tab-click="handleClick">
      <el-tab-pane label="新秀菜谱" name="first">
        <div class="essence-log">
          <ul v-for="(item,i) of lists" :key="i">
            <li>
              <a>
                <span class="imgbox">
                  <img :src="'http://127.0.0.1:3000/img/'+item.img_url" @click="getId" :data-id="item.lid" style="cursor:pointer">
                </span>
                <p>{{item.title}}</p>
              </a>
              <a>{{item.u}}</a>
            </li>
          </ul>
        </div>
      </el-tab-pane>
      <el-tab-pane label="一周热门" name="second">
        <div class="essence-log">
          <ul v-for="(item,i) of lists" :key="i">
            <li>
              <a href="javascript:;">
                <span class="imgbox">
                  <img :src="'http://127.0.0.1:3000/img/'+item.img_url">
                </span>
                <p>{{item.title}}</p>
              </a>
              <a>{{item.u}}</a>
            </li>
          </ul>
        </div>
      </el-tab-pane>
      <el-tab-pane label="最受欢迎的家常菜" name="third">
        <div class="essence-log">
          <ul v-for="(item,i) of lists" :key="i">
            <li>
              <a href="javascript:;">
                <span class="imgbox">
                  <img :src="'http://127.0.0.1:3000/img/'+item.img_url">
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
        lists:[]
      };
    },
    methods: {
      loadMore1(){
        console.log(123);
        //1.创建url
        var url="log";
        //2.发送ajax请求
        this.axios.get(url).then(result=>{
          console.log(result);
          this.lists=result.data.data;
          console.log(this.lists)
        })
      },
      handleClick(tab, event) {
        console.log(tab, event);
      },
      getId(e){
        this.$router.push({path:"/Sub",query:{id:e.target.dataset.id}});
        console.log(e.target.dataset.id);
      }
    },
    created() {
      this.loadMore1();
    },
  };
</script>
<style scoped>
  .ulList{
    list-style:none;
    display:flex;
    margin:0;
    padding:0
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