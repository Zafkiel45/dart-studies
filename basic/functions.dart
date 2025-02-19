void main() {
  // ➡️ A function is a object too. 
  // ➡️ Function being a object, it can be passed to another functions 
  // ➡️ Function is a object of type: Function
  // ➡️ Funcition can be stored in variables too. 

  // example of a common function:
  bool isGood(String animeName) {
    if(animeName != "Assassins Pride") {
      return true; 
    } else {
      return false;
    }
  };

  if(isGood("Sousou no Frieren")) {
    print("The name is good!");
  } else {
    print("The name is trash!");
  };

  // 🏁 END OF BASIC ABOUT FUNCTION! NOW, SEE SPECIFIC TOPICS ABOUT FUNCTION 
  // IN DATAILS IN THE FOLDER: functions 📁
}