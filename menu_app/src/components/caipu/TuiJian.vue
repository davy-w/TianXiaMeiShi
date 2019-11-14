<template>
  <div class="small_menu">
			<div class="small_menu_lf lf">
				<ul class="lf">
					<li><a href="">鸡翅做法大搜罗</a></li>
					<li>小美的菜单</li>
					<li>鸡翅真的是种神奇的东东！无论怎么烹饪做都会变得很好吃~厨房小白也毫无压力~</li>
				</ul>
			</div>
			<div class="small_menu_ct lf">
				<ul class="lf">
					<li><a href="javascript:;">早餐来碗营养粥</a></li>
					<li>云微光的菜单</li>
					<li>想要做出和粥店一样香滑软糯的粥吗？不妨来看看这些营养又美味的粥的做法哦~</li>
				</ul>
			</div>
			<div class="small_menu_rt lf">
				<ul class="lf">
					<li><a href="javascript:;">超滋补的鹌鹑蛋</a></li>
					<li>噜噜啦啦略略略的菜单</li>
					<li>相比于鸡蛋，鹌鹑蛋营养更高，更为滋补，而且能护肤、养颜，越吃越年轻哦!</li>	
				</ul>
			</div>
		</div>	
</template>
<style scoped>
  .small_menu{
		width: 990px;height: 120px;
		background: #EEEEEE;
		padding: 10px 20px 0 20px;
		box-sizing:border-box;
		margin: 10px 0;
	}
	.small_menu>div{
		width: 30%;
		height: 100%;
		margin-right: 30px;
	}
	.small_menu>div ul{
		width: 100%;
		height: 100%;
	}
	.small_menu>div ul li{
		float: left;
		width: 100%;
		height: 25%;
	}
	.small_menu>div ul li a{
		font-size: 20px;
		font-weight: 400;
		color: #333333;
	}
	.small_menu>div ul li:nth-child(2){
		color: #999;
		line-height: 30px;
	}
	.small_menu>div ul li:last-child{
		color: #333333;
		height: 40px;
	}
  .lf{
    float:left;
  }
  ul{
    list-style:none;
  }
  .small_menu>div ul li a {
    font-size: 20px;
    font-weight: 400;
    color: #333333;
    text-decoration:none;
}
.small_menu>div ul li{
  font-size:12px;
}
</style>
