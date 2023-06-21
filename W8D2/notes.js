function sayHelloNTimes(name, n) {
  function greet() {
    console.log( `Hi, ${name}!`);
  }

  for (let i = 0; i < n; i++) {
    greet();
  }
}

sayHelloNTimes("Bob", 3); // logs 'Hi, Bob!' x3
sayHelloNTimes("Sally", 6); // logs 'Hi, Sally!' x6