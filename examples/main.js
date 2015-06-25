cheat = require('..');

// 生成5个10-40的整数
// array
console.log(cheat.array.randomIntegers(5, 10, 40));
console.log(cheat.array.randomObjects(['name@string', 'id@integer', 'haveMarry@bool']));

// random
console.log(cheat.random.integer(3));
console.log(cheat.random.string(4));
console.log(cheat.random.bool());
console.log(cheat.random.object(['name@name', 'id@integer', 'haveMarry@bool', 'tel@phone', 'email@email', 'guid@guid']));
console.log(cheat.random.object({
  name: '@name',
  id: '@integer',
  email: '@email',
  user: {
    name: '@name',
    age: '@integer',
    parentName: ['id@integer']
  }
}));

// string
console.log(cheat.string.phone(true));
console.log(cheat.string.name('-'));
console.log(cheat.string.email());
console.log(cheat.string.guid());

// number
console.log(cheat.number.range(5, 20));
console.log(cheat.number.floating(5, 20, 4));

