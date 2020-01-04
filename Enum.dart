//ENUM -- ENUMERATION
//An enumaration(enum) is used for defining named constant values.
//An enumerated type is declared using the "enum" keyword.

//Syntax:
/*
enum enum_name{
  enumeration list...
}
enum_name -> specifies the enumeration type name.
enumeration list -> is comma-separated list of identifiers.

Each of the symbols in the enumeration list stands for an integer value,
one greater that the symbol precedes it. By default, the value of the first
enumeration symbol is 0.
So, the thing goes like this: 0, 1, 2, ..., n - 1.
*/

enum Status{
  stopped, //ta com o valor 0
  running, //valor 1
  paused   //valor 2
}

enum RGB{
  Red,
  Green,
  Blue
}

void main(){
  //Pra poder saber o valor associado aquela parte do enum, use: .index
  print(Status.stopped.index);
  print(Status.running.index);
  print(Status.paused.index);

  print(RGB.Red.index);
  print(RGB.Blue.index);
  return;
}
