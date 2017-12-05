import Vue from 'vue/dist/vue.esm';
import Axios from 'axios';
import VueAxios from 'vue-axios';
import Example from './components/Example.vue';
import TurbolinksAdapter from 'vue-turbolinks';

Vue.use(TurbolinksAdapter, Axios, VueAxios)

document.addEventListener('turbolinks:load', () => {
  Axios.defaults.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
  console.log("Hello from vue!")

  var element = document.getElementById("vue-placeholder")

    if (element != null) {
      var vm = new Vue({
        el: element,
        //mixins: ['TurbolinksAdapter'],
        template: '<Example/>',
        components: { Example }
      })
    }
})
