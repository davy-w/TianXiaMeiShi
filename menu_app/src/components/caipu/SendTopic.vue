<template>
  <div class="Send_topic">
    <el-page-header @back="goBack" content="发布新话题">
    </el-page-header>
    <ul>
      <li>
        <label class="must">上传图片（最多九张）</label>
        <el-upload class="upload-demo" action="https://jsonplaceholder.typicode.com/posts/" :on-preview="handlePreview"
        :on-remove="handleRemove"
        :before-remove="beforeRemove"
        multiple
        :limit="3"
        :on-exceed="handleExceed"
        :file-list="fileList"
        list-type="picture">
          <el-button size="small" type="warning">上传图片</el-button>
          <ul v-model="fileList" v-for="(item,i) of fileList" :key="i">
            <li></li>
          </ul>
        </el-upload>
      </li>
      <li>
        <label class="text">加个标题（非必填）</label>
        <br>
        <el-input v-model="title" placeholder="请输入内容"></el-input>
      </li>
      <li>
        <label class="must">写话题</label>
        <br>
        <el-input type="textarea" :rows="15" placeholder="请输入内容" v-model="content"></el-input>
      </li>
      <li>
        <el-button type="danger" v-on:click="send">发布话题</el-button>
      </li>
    </ul>
  </div>
</template>
<script>
  export default {
    data(){
      return{
        fileList: [{name: 'food.jpeg', url: 'https://fuss10.elemecdn.com/3/63/4e7f3a15429bfda99bce42a18cdd1jpeg.jpeg?imageMogr2/thumbnail/360x360/format/webp/quality/100'}, {name: 'food2.jpeg', url: 'https://fuss10.elemecdn.com/3/63/4e7f3a15429bfda99bce42a18cdd1jpeg.jpeg?imageMogr2/thumbnail/360x360/format/webp/quality/100'}],
        title: '',
        content: '',
      }
    },
    methods: {
      goBack() {
        console.log(2);
      },
      handleRemove(file, fileList) {
        console.log(file, fileList);
      },
      handlePreview(file) {
        console.log(file);
      },
      handleExceed(files, fileList) {
        this.$message.warning(`当前限制选择 3 个文件，本次选择了 ${files.length} 个文件，共选择了 ${files.length + fileList.length} 个文件`);
      },
      beforeRemove(file, fileList) {
        return this.$confirm(`确定移除 ${ file.name }？`);
      },
      send(event){
        var title=this.title;
        var content=this.content;
        var img=this.fileList[0];
        /*this.fileList.push({name:"hot1.jpg",url:"../../assets"})*/
        console.log(img.name,img.url,title,content)

        var fileList=this.fileList;
        console.log(fileList);
        console.log(title,content)
      }
    },
  }
</script>
<style scoped>
  ul{
    list-style:none;
  } 
  .Send_topic{
    width: 990px;
    overflow: hidden;
    margin: 40px auto;
    text-align:left;
  }
  .Send_topic li{
    padding: 15px 0 0 0;
  }
  .Send_topic li .must:after {
    content: '*';
    color: red;
  } 
</style>
<style>
  .Send_topic .el-page-header{
    border-bottom:1px solid #ddd;
  }
  .Send_topic .upload-demo{
    margin:5px 0;
  }
  .Send_topic .el-input__inner{
    width: 30%;
    margin:5px 0;
  }
  .Send_topic .el-textarea{
    width: 70%;
    margin:5px 0;
  }
  .Send_topic .el-upload-list--picture .el-upload-list__item{
    width:70%;
  }
</style>
