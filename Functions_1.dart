
//For functions that contain just one expression, you can use a shorthand syntax.
//bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
//The => expr syntax is a shorthand for { return expr; }. 
//The => notation is sometimes referred to as arrow syntax.

int dobro(int number) => 2*number;

int main(){
  //Functions...
  //Dart is a true object-oriented language, so even functions are objects and 
  //have a type, Function. This means that functions can be assigned to 
  //variables or passed as arguments to other functions. 
  //You can also call an instance of a Dart class as if it were a function.

  //Funcoes em Dart ainda funcionam se vc omitir os seus tipos (retornos) embora
  //isso NAO seja nem um pouco recomendado...

  //Short syntax for functions that have only one expression in its scope...
  int dale = 3;
  int answer = dobro(dale);
  print("Valor de answer: $answer");
  //A function can have two types of parameters: required and optional. 
  //The required parameters are listed first, followed by any optional parameters. 
  //Optional parameters can be named or positional.

  //Every app must have a top-level main() function, which serves 
  //as the entrypoint to the app. The main() function 
  //returns void and has an optional List<String> parameter for arguments.
  return 0;
}
