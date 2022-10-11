// function add(a) {
//   return function (b) {
//     return a + b;
//   };
// }

// console.log(add(3)(4));

// let add3 = add(3);
// console.log(add3);
// console.log(add3(4));

let curriedFunction = function (arg) {
  return function (arg2) {
    return `${arg} is better than ${arg2}!`;
  };
};

let calledFunc = curriedFunction('peanut butter');
console.log(calledFunc('nutella'));
