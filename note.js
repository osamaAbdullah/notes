// npm search plugin_name 

$(id).closest('.form-group');

// ---- starting promise
// promise are good in case of nesting them like promise.then().then()
let promise = new Promise((resolve, reject) => {
    let a = 1;
    if(a === 1) {
        resolve('successful');
    }
    else{
        reject('failed');
    }
})

promise.then(message => {
    console.log(message);
}).catch(error => {
    console.log(error);
})
// ------ ending promise

// ------ same logic as promise with callbacks
function callbackPromise(resolveCallback, rejectCallback) {
    let a = 1;
    if(a === 1) {
        resolveCallback('successful');
    }
    else{
        rejectCallback('failed');
    }
}

function resolveCallback(message) {
    console.log(message);
}
function rejectCallback(error) {
    console.log(error);
}

callbackPromise(resolveCallback, rejectCallback);
// or
callbackPromise((message) => console.log(message), (error) => console.log(error));

// ------ end of callbacks

// running multi promise

let promise1 = new Promise((resolve, reject) => {
    resolve('promise1 successful');
});
let promise2 = new Promise((resolve, reject) => {
    resolve('promise2 successful');
});
let promise3 = new Promise((resolve, reject) => {
    resolve('promise3 successful');
});

Promise.all([promise1, promise2, promise3]).then(messages => {
    console.log(messages);
})

Promise.race([promise1, promise2, promise3]).then(message => {
    console.log(message);
}) // it will execute then() as soon as one of them finishes

// end of running multi promise

// destructuring arrays and objects
const letters = ['A', 'B', 'C', 'D', 'E', 'F'];
const numbers = [1, 2, 3, 4, 5, 6];

const newArr = [...letters, ...numbers];

// old-way
const a = letters[1];
const b = letters[2];

// new-way 
const [a, b] = letters;

console.log(a);
console.log(b);

const [a, , c, ...theRest] = letters;

console.log(a);
console.log(c);
console.log(theRest);

function sumMultiply(a, b) {
    return [a+b, b*b]
}

const result = sumMultiply(3, 6);

const [sum, multiply] = sumMultiply(3, 6);

// u can set default value too
const [sum, multiply, division = 'no division'] = sumMultiply(3, 6);

// object has all of arrays functionalities plus
const someObject = {
    name: 'osama',
    age: 24,
    address: {
        country: 'iraq',
        city: 'erbil',
    }
};
const {name, age: personAge, city = 'default value', ...theRestOfObject} = someObject;
// destructors nested objects also
const {name, age: personAge, city = 'default value', address: {city, street = 'none'}} = someObject;

// end of destructuring

// arrays operations
const array = ['A', 'B', 'C', 'D', 'E', 'F'];

const newFreshArray = array.filter(item => item.length > 0) // remove all items that their length is 0 or less

const newFreshArray1 = array.map(item => ' -' + item + '- ') // change an array 

const item = array.find(item => item === 'F') // return the first item if found

array.forEach((item, index) => console.log(item))

const hasLargeStr = array.some(item => item.length > 5) // return boolean, if case found true else: false

const isAllOfThemOneLetter = array.every(item => item.length === 1) // return boolean if case met for all item true else: false

const total = array.reduce((value, item) => item.price + value, startFrom = 0) // return sum of all items price

const hasLargeLetter = array.includes('Z') // return boolean, if found true else: false

// end of arrays operations

function foo () {
    console.log(this)
}

const foo = () => {};