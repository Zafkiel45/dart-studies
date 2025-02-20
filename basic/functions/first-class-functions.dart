import '../variables.dart';

void main(List<String> arguments) {
    // 💎📁🏁🌟➡️
    // ➡️ A funciton can be passed to another function as value 
    
    void theBestAnimes(String anime) {
      print(anime);
    };

    List<String> animes = const [
      "Sousou no Frieren", 
      "Violet Evergarden", 
      "Hajime no Ippon"
    ];
    // this uses the function "theBestAnimes" as argument.

    // 🌟 The forEach method is as in JavaScript. The funciton will be called
    // for each element in the list, and pass the current element to the paramenter
    // "anime"
    animes.forEach(theBestAnimes);

    // ➡️ of course it's possible to assign a function to a variable:
    var animePrint = TheBestManga();

}