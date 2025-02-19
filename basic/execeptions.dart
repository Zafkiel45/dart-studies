import 'dart:io';

void main() {
  var astronauts = 10;
  
  // this is a simple throw 
  if (astronauts == 0) {
    throw StateError('No astronauts.');
  }
  // below it has examples of use using try...catch...finally and a new friend 
  // the "on". I do not know what the "on" does.
  Future<void> describeFlybyObjects(List<String> flybyObjects) async {
    try {
      for (final object in flybyObjects) {
        var description = await File('$object.txt').readAsString();
        print(description);
      }
    } on IOException catch (e) {
      print('Could not describe object: $e');
    } finally {
      flybyObjects.clear();
    }
  }
}
