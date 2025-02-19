void main() {
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
}
