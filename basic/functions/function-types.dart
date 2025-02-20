void main() {
    // 💎📁🏁🌟➡️
    // ➡️ A function type is the type annotation to functions 
    // ➡️ function types improves the security 
    // ➡️ improves the clarity 
    // ➡️ improves organization

    // the function:
    // 🌟 the function  "header" is all before os braces. 
    void greet(String name, {String greeting = 'Hello'}) =>
    print('$greeting $name!');

    // Store `greet` in a variable and call it.
    void Function(String, {String greeting}) g = greet;
    g('Dash', greeting: 'Howdy');
    // 🌟 the funciton name is substituted by "Function" and the positional
    // argumets can be ommited, but named arguments NOT!

    
}