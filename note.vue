this.$router.go(this.$router.currentRoute); /reload single compenent in nova
@mouseleave="toggleCollapsed"
@mouseover="toggleCollapsed"
@submit="call_some_thing()"

onChange(e) { // dispaly the selected image
    if (! e.target.length) return;
    let file = e.target.files[0];
    let reader = new FileReader();

    reader.readAsDataURL(file);
    reader.onload = e => {
        this.avatar = e.target.result;
    }
}

// you can add native attributes to a tag that is in template tag of a component


// if you use a sub component you may only import in parent  
import Reply from 'pathToReplyComponent';
components: { Reply },

<vue-component inline-templete></vue-component>
this.items.splice(index, 1); // you can pass an item instead of "1" to replace that item inthe collection

Vue.prototype.authorize = function(handler) {    
// window.Vue.prototype.authorize = function(handler) {

    return handler(window.App.user);
};

this.authorize(user => this.data.user_id === user.id);

request()->expectsHson()

location.pathname 

:key="reply.id" // to act on selected one

mixins:{{

export default {
    data() {
        return {
            items: [],
        },
    },
    methods: {
        add(item) {
            this.items.push(item);
            this.$emit('added');
        },
        remove(index) {
            this.items.splice(index, 1);
            this.$emit('remove');
        },
    },
}

call them:
import collection from 'pathToMixinFile';

mixins: [collection],
}}

watch: {  // watch over variable // with components and methods and data
    propName() {
        this.page = this.dataSet.current_page;
        this.prevUrl = this.dataSet.prev_page_url;
        this.nextUrl = this.dataSet.next_page_url;
    }
}

location.search
location.search.match(/page=(\d+));
history.pushState(null, null, '?page=' + this.page);
window.scrollTo(0, 0);

v-cloak // doesn't show untill compenent fully loaded
[v-cloak] { display: none} // in css

if you pass a prop and you do not recieve in your compenent it will be assigned to the top level tag 

this.$parent.$on('event', function) // when something happened on parent do something on child (parent notify the child)



this.$refs.trix.$refs.trix.value = '';

:class="{ 'class_name': boolean }" // apply class_name depending on boolean

Vue.component('tasks-list', {
    template: '<li>foor bar</li>',
    data() => {
        return {

        };
    }
})

window.Event = new Vue() // make vue instance for events 
Event.$emit('changed') // attach event to that instanse any where 
Event.$on('changed', doSomething) // recive event from that instance anywhere

<slot name="osama"></slot> // in the x compenent

<x>
<tempalte slot="osama"></template> //  when you call a compenent use template tag if you dont want other tags to show 
</x> // if you dont want wraper use tempalte tag

// you can use default slot with named slots
// if you define somthing in the slot when you call that compenent if you pass any thing it will be replaced with the slot but if you do not pass any thing the thing that was inside slot will be shown as a default 
// use inline template when you don't repeat that component any else where
@submit.once="callback" // only run callback once

{{ value | filter }}

filters: {
    filter(value){
        return value.toUppercase;
    }
}

<slot name="slotName" @title="title"></slot>
data(){title: 'foo bar'}

<template slot="slotName" scope="var_name">
<h1>{{ var_name.title }}</h1>
</template>

import 'plugin/dist/style.min.css';

this.timer = setTimeout(() => {
    //
}, 2000);

clearTimeout(this.timer);

_throttle // trigger each x seconds
_debaunce // trigger after it should have been trigger by x seconds

created(){}
mounted(){}


//vue 3

1. move a tag to anywhere in dom
<div id="target-id"></div>

<portal target="#target-id">
    <h1>hi there</h1>
</portal>

multi root tags in template


data() {
    return {
        foo_: 'osama',
    }
},
methods: {
    foobar() {
        this.foo = 899;
        console.log(this.foo);
        console.log(this.foo);
        console.log(this.foo);
        console.log(this.foo);
    }
},
computed: {
    foo: {
        get() {
            console.log('get called');
            return this.foo_;
        },
        set(value) {
            console.log('set called');
            this.foo_ = value * 2;
        },
    }
}


