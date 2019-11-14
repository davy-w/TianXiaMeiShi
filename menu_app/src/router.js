import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'

Vue.use(Router)
//自定义组件
import Login from './components/caipu/Login.vue' 
import Foot from './components/caipu/Foot.vue'
import Lunbo from './components/caipu/Lunbo.vue'
import HotTopic from './components/caipu/HotTopic.vue'
import SendTopic from './components/caipu/SendTopic.vue'
import Bg from './components/caipu/Bg.vue'
import BotNav from './components/caipu/BotNav.vue'
import MenuShow from './components/caipu/MenuShow.vue'
import Navbar from './components/caipu/Navbar.vue'
import BackToTop from './components/caipu/BackToTop.vue'
import Sub from './components/caipu/Sub.vue'
import Pic3d from './components/caipu/Pic3d.vue'
import Footer from './components/caipu/Footer.vue'
import TuiJian from './components/caipu/TuiJian.vue'
import Rcom from './components/caipu/Rcom.vue'
import Detalis from './components/caipu/Detalis.vue'
import MiniBar from './components/caipu/MiniBar.vue'
import Foods from './components/caipu/Foods.vue'
import Special from './components/caipu/Special.vue'
import Special_child from './components/caipu/Special_child.vue'
import Health from './components/caipu/Health.vue'
import Show from './components/caipu/Show.vue'
export default new Router({
  routes: [
    {path: '/',name: 'home',component: Home},
    {path: '/about',name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    },
    {path:'/Login',component:Login},
    {path:'/Foot',component:Foot},
    {path:'/Lunbo',component:Lunbo},
    {path:'/HotTopic',component:HotTopic},
    {path:'/SendTopic',component:SendTopic},
    {path:'/Bg',component:Bg},
    {path:'/BotNav',component:BotNav},
    {path:'/MenuShow',component:MenuShow},
    {path:'/Navbar',component:Navbar},
    {path:'/BackToTop',component:BackToTop},
    {path:'/Sub',component:Sub},
    {path:'/Pic3d',component:Pic3d},
    {path:'/Footer',component:Footer},
    {path:'/TuiJian',component:TuiJian},
    {path:'/Rcom',component:Rcom},
    {path:'/Detalis',component:Detalis},
    {path:'/MiniBar',component:MiniBar},
    {path:'/Foods',component:Foods},
    {path:'/Special',component:Special},
    {path:'/Special_child',component:Special_child},
    {path:'/Health',component:Health},
    {path:'/Show',component:Show}
  ]
})
