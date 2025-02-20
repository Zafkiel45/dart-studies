void main() {
  // 💎📁🏁🌟➡️
  // ➡️ anonymous function are very common in programming world;
  // ➡️ anonymous function are as regular functions, but without a name.
  // ➡️ this can be called of closure and lambdas too.

  const list = ['apples', 'bananas', 'oranges'];

  // the function is passed to "map". In summary, is a callback. 
  var uppercaseList =
      list.map((item) {
        return item.toUpperCase();
      }).toList();
  // Convert to list after mapping

  for (var item in uppercaseList) {
    print('$item: ${item.length}');
  }

  // it is possible to use a arrow function too.
  // returns the inline expression, without return required. 
  // in general, it is as in JavaScript.
  
  // 🌟 if the arrow function has a single statement, as a print, this is 
  // executed. If it is a expression, the expression is returned.
  var arrowFunction = list.map((item) => item.toUpperCase()).toList();
  arrowFunction.forEach((item) => print('$item: ${item.length}'));
}
