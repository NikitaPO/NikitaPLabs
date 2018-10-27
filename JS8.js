function sum(...args) {
  let s = 0;
  for (let i = 0; i < args.length; i += 1) {
    s += args[i];
  }
  return s;
}

console.log(sum(1, 2, 5, 5, 2));

// вывод 15
