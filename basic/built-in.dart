/*
  Dart has special support common primitive types, but also it has support to
  different types(it is not present in JavaScript). 

  Types:

  - Number(Int, Double): "Int" a integer and "Double" is a fractional number
  - Strings(String): It's the same than another languages 
  - Records((value1, value2)): I don't know anything about this!
  - Boolean(bool): The boolean value
  - Functions(Function): A function value 
  - List(List): It is an array. 
  - Set(Set): I don't know anything about this!
  - Map(Map): I have a bit of experience on this. But, it's good pay more attention.
  - Runes(Runes): Maybe this be something like Regexp? I don't know! 
  - Symbol(Symbol): Probably this behave some way of JavaScript.
  - Null(Null): The null value.
*/

// IMPORTANT TO KNOW:
// Anything at Dart is a object
// Variables are instance of classes 
// A variable holding a string it's only an instance of String class 

var name = "Dart"; // This is an instance of the String class.
var number = 42;    // This is an instance of the int class.

// Some built-in types has its own constructor:

var list = List<int>.empty(growable: false); // the "list" is a constructor

// Int, Double, String doesn't have a constructor, because it's not necessary 
// Dart automatically optimize them.

/*

  SPECIAL TYPES IN DART

  - Object: The superclass of all Dart classes except Null.
  - Enum: The superclass of all enums.
  - Future and Stream: Used in asynchrony support.
  - Iterable: Used in for-in loops and in synchronous generator functions.
  - Never: Indicates that an expression can never successfully finish evaluating. Most often used for functions that always throw an exception.
  - dynamic: Indicates that you want to disable static checking. Usually you should use Object or Object? instead.
  - void: Indicates that a value is never used. Often used as a return type.

*/

// NUMBERS: 

// Int subtype: ================================================================
// The amount of bites to represent numbers variantes according plataform.
// In general, it's 2^64, but it can be 2^63 - 1. In end of day, it's a big number 
// Double Subtype: =============================================================
// Double is fixed in 2^64 bits. 
// More informatiosn: ==========================================================
// - Both "Int" and "Double" are subtypes of "num". This allow to use methods like 
// floor(), ceil() and etc... In addition, it's allowed create numeric expressions
// using operators. 
// - The bitwise operator is defined in "Int" class. 
// - If "num" or its substypes doesn't have what you want, try import "dart:math".

// examples of "Int" values:
var x = 1;
var hex = 0xDEADBEEF;
// Examples of "Double" values:
var y = 1.1;
var exponents = 1.42e5;
// It's possible specify the type annotation "num". This means variable can be 
// "Int" or "Double".
void main() {
  num bothIntAndDouble = 1;
  bothIntAndDouble += 2.5;

  // convets integers in double when necessary
  double z = 1; // Equivalent to double z = 1.0.

  // Of course, it's possible to convert numbers to string and vice-versa:
  String MyAge = 20.toString(); // returns "20"
  int GirlfriendAge = int.parse("21"); // returns 21
  double myWallet = double.parse("0.24"); // returns 0.24
  String piValue = 3.14159.toStringAsFixed(2); // returns "3.14"

  // there is an article about "numbers" in Dart. Read this after!

  // in Dart 3.6 it is possible to use underscore to separe numbers! This turns
  // more readeble.
  var n1 = 1_000_000;
  var n2 = 0.000_000_000_01;
  var n3 = 0x00_14_22_01_23_45; // MAC address
  var n4 = 555_123_4567; // US Phone number
  var n5 = 100__000_000__000_000; // one hundred million million!

  // STRINGS ===================================================================
  // In Dart, strings are UTF-16. This measn that a simple character is stored
  // using two bytes and incomum characters, like emojis, are stored using four
  // bytes

  // only single quotes or double quotes are allowed.

  // Example of strings:
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  // to interpolate strings, it's same way: ${}. But, if it's a reference to
  // a variable, it's possible simplify and to use just $ 
  // Dart calls automatically the toString() method.

  var s = 'string interpolation';

  assert(
    'Dart has $s, which is very handy.' ==
        'Dart has string interpolation, '
            'which is very handy.',
  );
  assert(
  'That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!',
  );    

  // to do concatenation among strings is like JavaScript, but with one option
  // extra. 
  // The first way is to use the addiction operator (+). 
  // The Second way add adjacent strings 

  var concatenation1 =
    'String '
    'concatenation'
    " works even over line breaks.";
  // this works even in break line
  var concatenation2 = 'The + operator ' + 'works, as well.';

  // to add break lines use three double quotes or single quotes in the begin
  // and end os string:

  var multi1 = '''
  You can create
  multi-line strings like this one.
  ''';

  var multi2 = """This is also a
  multi-line string.""";

  // A string is evaluated in compile-time if all parts be constants.
  // in addition, if a variable is a literal-string, and doesn't make part of
  // anything, so this is evaluated in compile-time 

  // this it can be confuse! But, in the practice is clear!

  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';
  
  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];
}
