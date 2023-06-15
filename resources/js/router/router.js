import { createRouter, createWebHistory } from 'vue-router'

const routes = [
    {
        path: '/admin/home',
        name: 'home',
        component: () => import( /* webpackChunkName: "home" */ '../components/admin/home.vue')
    },
    {
        path: "/admin/product",
        name: 'product',
        component: () => import( /* webpackChunkName: "product" */ '../components/admin/product.vue')
    },
    {
        path: "/admin/:pathMatch(.*)*",
        name:'notFound',
        component: () => import( /* webpackChunkName: "notFound */ '../components/notfound.vue')
    },
];

const router = createRouter({
    history: createWebHistory(),
    routes // <-- routes,
})

export default router
