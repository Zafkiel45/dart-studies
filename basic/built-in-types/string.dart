void main() {
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
