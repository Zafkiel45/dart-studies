void main() {
  // BOOLEANS ==================================================================

  // Booleans in Dart are the same than JavaScript, only "true" and "false".
  // Even "true" and "false" are instance of class Boolean
  // Dart doesn't allow to check non-boolean in conditionals or something what
  // expect a boolean.

  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

  // Check for zero.
  var hitPoints = 0;
  assert(hitPoints == 0);

  // Check for null.
  var unicorn = null;
  assert(unicorn == null);

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);

  // Particularl, this is awesome! In JavaScript can be difficult predict the
  // result, but in Dart this is explicit! BUT, now it is necessary remember
  // all correct commands or ways to check!
}
