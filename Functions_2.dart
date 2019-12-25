//Here’s an example of the main() function 
//for a command-line app that takes arguments:

void main(List<String> arguments){
  // Run the app like this: dart test.dart 1 test
  //Tu pode rodar sem, a diferenca eh que tu vai ta simplesmente geranod uma list
  //vazia
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');

  return;
}
