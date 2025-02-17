
void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}

class Spacecraft {

  /*
    Class are to object-oriented paradigm. I didn't know so much about this.
    So, I have a lot of study forwards. I'm looking forward. 

    What do I understand? 

    - properties are declared in same way of variables, like in JavaScript. 
    - There is a "get" keyword, but I don't know what this. Maybe a getter? 
    - The constructor keyword is not necessary, apparently. The name of class
    is enough, I like this. There are erros about "this" and "formal" field. 
    I don't know how to fix this. In the future, when I will be more mature in 
    Dart, I will fix this.
    - There is a "unlaunched" method in the constructor. The name is suggestive,
    but I am not certain of this. There is a error too.
    - the method is ok, without erros and nothing new for me. 
    - Interpolation in dart is very different... Only the "$" is necessary 
    before of variable. 

  */ 

  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate) {

  }

  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');

    var launchDate = this.launchDate;

    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
