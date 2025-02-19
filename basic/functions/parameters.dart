void main() {
  // 💎📁🏁🌟
  // ➡️ Functions can have any amount of 🌟"required positional parameters".🌟 
  // ➡️ Functions can have optional parameters too.
  // ➡️ appearentely, it's not possible to use both required and optional parameters
  
  /// 💎 Named parameters: 
 
  /// Named parameters are optional until I mark as 🌟Required🌟.
  /// Parameters are declared between brances to specify named parameters
  /// If you don't provide a default value or mark as 🌟Required🌟, the parameters must be null by default
  
  /// Sets the [bold] and [hidden] flags ...
  void enableFlags({bool? bold, bool? hidden}) {
    //...
  }

  // to call a functios and pass arguments is easy: ParamName: ParamValue
  enableFlags(bold: true, hidden: false);
  // to specify default value is easy too:
  void theBestGame({String gameName = "Nier: Automata;"}) {
    // ...
  };
  // default value: "Nier: Automata;"
  theBestGame();
  // if a parameter must required, use: 
  void theBestWaifu({required String waifuName}) {
    // ... 
  };
  // the parameter "waifuName" is mandatory and trigger an error if not specifed
  theBestWaifu(waifuName: "Esdeath");
  // 🌟 there is not strict order to specify the named arguments 🌟 
  
  // 💎 Positional parameters 

  /// it is the same than JavaScript 
  /// The order is strict and trigger an error sometimes 
  
  void successPersonHas(bool contancy, bool determination, bool patience) {
    // ...
  };
  // the order is important!
  successPersonHas(true, true, true);

  // 💎 Optional parameters:

  /// Optional parameters is between brackets, and if it doesn't have a default
  /// value, so it must be nullable.
  String say(String from, String msg, [String? device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  };

  /// the thirdy argument is not mandatory! 
  say('Bob', 'Howdy');
  /// 🌟 Optional parameters can have default value using "=" of same way than
  /// named parameters 
}