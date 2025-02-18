
// in Dart, variables are initilized when used. Usually, this is done by Dart
// automatically, but appearently, in some cases, Dart cannot analyse correctly.
// the "late" said explicitly: This variable will have a value in some moment.
// this value is not "null".
late String theFavoriteManga;
// See below, in the "main()" function the example.
String TheBestManga() {
  return "Vagabond";
}

void main() {
  // the type annotation is not mandatory, but I will specify in the real world
  // Dart is a type-safer and dynamically, infere the correct type of "var"
  var myName = "Murilo";
  var myAge = 19;
  var myWallet = 0.4;
  var myFavoriteThings = ["Animes", "Games", "Programmer"];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg',
  };

  // this is a variable with type annotation to String.
  // This variable is never "null" and you must initilize variable non-nullable
  String girlfriendName = "Emilly";
  // this allow the variable to be "null", because of "?" annotation.
  // If I didn't pass a initial value, the default is null.
  String? favoriteGame  = "Nier: Automata;"; 
  // this is null if I use before to assign something it.
  String currentPlayingGame;
  // I can assign a variable after. 
  currentPlayingGame = "Shadows of Mordor";
  // the magic here is: In Dart, a variable is initialized only when it is used.
  // if I was used "currentPlayingGame" before assing something it, it will be
  // null.
  // ===========================================
  // the "theFavoriteManga" is a late-variable. This means that, when I use 
  // the "theFavoriteManga", the function "TheBestManga()" is called!
  // It's awsome, because heavy functions will be called if the "late-variable"
  // is called! It improves the optimization! In this case, the function is 
  // called, because the value initial was empty and I use the variable to 
  // assing the function value it. But if the function was the initial value 
  // the function will be called only when I use the variable in the first time!
  theFavoriteManga = TheBestManga();

  // below a constant, BUT this is very different from JavaScript.
  // In essency, the constant prevents of variable to be reassingned.
  // However, consts initialize in "compile-time", before of program start up.
  // this means the variable is indeed immutable!
  // In addition, it's possible specify constant constructors, list, and more!

  const myLove = ["animes", "games", "programming"]; 

  // OBSERVATION: There is a guie of best practice I written in the RemNote and
  // logseq. Apply spaced revision. 

  const Point p1 = Point(1, 2); // ✅ Compile-time constant object
  const Point p2 = Point(1, 2); // ✅ Compiler will reuse the same object

  print(identical(p1, p2)); // ✅ Output: true (both are the same instance!)

  // constant lists
  const List<int> numbers = [1, 2, 3]; // ✅ Constant list
  const Map<String, String> config = {
    "appName": "DartApp",
    "version": "1.0"
  }; 

  // Also there is the "final" keyword. The final keyword does pratically, the
  // same than const, but in runtime and it is less optimized because of this.
  // another observtion is: in instance fields (variables of classes), the 
  // const doesn't work, only if I writte "static const...". But, this belongs
  // the class itself, and it is useful only some cases. 
  // In moments that a constant field instance is necessary, the "final" is 
  // the correct choice. In addition, some values of user, as Input, are 
  // runtime value, and only "final" can be used in those cases. 

  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  // name = 'Alice'; // Error: a final variable can only be set once.

  // There is also the wildcards. They are placeholders in moments of variable
  // doesn't be useful. A wildcard is "_".
}

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y); // 👈 Constant Constructor
}