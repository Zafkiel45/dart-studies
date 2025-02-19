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

// FOR MORE EXAMPLES AND DETAILS OF BUILT-IN TYPES, SEE THE FOLDER: BUILT-IN-TYPES