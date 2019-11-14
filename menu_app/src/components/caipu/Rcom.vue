<template>
  <div class="main_rcom">
    <div class="rcom">
      <el-tabs v-model="activeName1">
        <el-tab-pane label="健康" name="first">
          <img src="../../assets/tuijian1.jpg">
          <ul>
            <li><span></span><a href="">血液不流畅，8种食物活血化瘀</a></li>
            <li><span></span><a href="">把这9种食物带回家，养肝肝护肝必备</a></li>
            <li><span></span><a href="">女人常喝的5款美颜茶，皮肤越喝越靓</a></li>
            <li><span></span><a href="">咳嗽吃什么好？10种食物来止咳</a></li>
            <li><span></span><a href="">专题:那些美颜食物的神级吃法</a></li>
            <li><span></span><a href="">专题:低卡减肥餐，让你瘦到飞起来</a></li>
          </ul>
        </el-tab-pane>
        <el-tab-pane label="食疗" name="second">
          <div id="sl">
            <ul id="sl_ul">
              <li>瘦身</li>
              <li>丰胸</li>
              <li>养颜</li>
              <li>排毒</li>
              <li>补钙</li>
              <li>贫血</li>
              <li>滋阴</li>
              <li>壮阳</li>
              <li>失眠</li>
              <li>消暑</li>
              <li>免疫力</li>
              <li>养胃</li>
              <li>痛经</li>
              <li>月经不调</li>
              <li>前列腺</li>
              <li>抗衰老</li>
              <li>防辐射</li>
              <li>抗雾霾</li>
            </ul>
          </div>
        </el-tab-pane>
      </el-tabs>
    </div>
     <div class="rcom">
      <el-tabs v-model="activeName2">
        <el-tab-pane label="烘焙" name="first">
          <img src="../../assets/tuijian3.jpg">
          <ul>
            <li><span></span><a href="javascript:;">象征丰收和满载的和果子</a></li>
						<li><span></span><a href="javascript:;">自制美味的花生牛轧糖</a></li>
						<li><span></span><a href="javascript:;">内藏惊喜的彩虹戚风蛋糕</a></li>
						<li><span></span><a href="javascript:;">消耗蛋挞皮－简单版红薯酥</a></li>
						<li><span></span><a href="javascript:;">菜单:奥利奥的N种百搭吃法</a></li>
						<li><span></span><a href="javascript:;">专题:另类咸香口儿 满足你的味蕾！</a></li>
          </ul>
        </el-tab-pane>
        <el-tab-pane label="食谱" name="second">
          <div id="sl">
            <ul id="sl_ul">
             <li>吐司</li>
              <li>三明治</li>
              <li>马芬</li>
              <li>布朗尼</li>
              <li>蛋糕卷</li>
              <li>玛德琳</li>
              <li>舒芙蕾</li>
              <li>纸杯蛋糕</li>
              <li>戚风</li>
              <li>马卡龙</li>
              <li>糖霜饼干</li>
              <li>曲奇</li>
              <li>披萨</li>
              <li>泡芙</li>
              <li>蛋挞</li>
              <li>派塔</li>
              <li>中式糕点</li>
              <li>酥</li>
            </ul>
          </div>
        </el-tab-pane>
      </el-tabs>
    </div>
     <div class="rcom">
      <el-tabs v-model="activeName3">
        <el-tab-pane label="为你推荐" name="first">
          <img src="../../assets/tuijian2.jpg">
          <ul>
            <li><span></span><a href="javascript:;">春天易上火，5款食疗降春火</a></li>
            <li><span></span><a href="javascript:;">划重点！食物降血脂这些更有效</a></li>
            <li><span></span><a href="javascript:;">粗粮细作:健康能量燕麦甜品</a></li>
            <li><span></span><a href="javascript:;">妈妈派:童趣童味，儿童创意餐点</a></li>
            <li><span></span><a href="javascript:;">免费抽奖:ACA 多功能辅食料理机</a></li>
            <li><span></span><a href="javascript:;">免费抽奖:Haier 海尔智能烤箱 (活力黄)</a></li>
          </ul>
        </el-tab-pane>
      </el-tabs>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        activeName1: 'first',
        activeName2: 'first',
        activeName3: 'first'
      };
    },
  };
</script>
<style scoped>
 .main_rcom{
    width: 990px;
    height: 385px;
    display: flex;
    box-sizing: border-box;
    justify-content: space-between;
 }
/**************健康************ */
  span{
    display: inline-block;
    width: 6px;
    height: 6px;
    border: 2px solid #CCCCCC;
    border-radius: 50%;
    background: #fff;
    position: relative;
    left: -10px;
  }
  a{
    text-decoration:none; 
    color:#666;
  }
  a:hover{
    color:#f00;
  }
  ul{
    list-style:none;
    font-size:15px;
    margin:0;
    padding:0;
    text-align:left;
  }
  li{
    padding:10px 0 0 15px;
  }
  /****************食疗************* */
  #sl_ul{
    width: 310px;
    height: 320px;
    display: flex;
    box-sizing: border-box;
    padding-top: 7px;
    flex-wrap: wrap;
    justify-content: space-between;
  }
  #sl_ul li {
    width: 89px;
    height: 39px;
    line-height: 39px;
    text-align: center;
    font-size: 18px;
    border: 1px solid #E1E1E1;
    padding:0;
}
#sl_ul li:hover{
  border:1px solid #f00;
  color:#f00;
  cursor:pointer;
}
</style>