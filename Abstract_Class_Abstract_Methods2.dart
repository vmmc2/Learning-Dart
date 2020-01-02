//An abstract class is a type of class that cannot be instantiated directly
//which means an object cannot be created from it.

//An abstract class cannot be instantiated but they can be sub-classed

//To define an abstract class we use the "abstract" keyword

//Syntax for creating an abstract class:
abstract class class_name{
  //body of the abstract class...
}

//Abstract methods can only exist within an abstract class
//To make a method abstract, use a semincolon(;) instead of the method body...

//Normal classes can extend the abstract class, but they have to override every
//abstract method.

//You can also create normal methods in the abstract class. And to override normal
//method is not mandatory...

//The abstract class will only complain when you do not override the abstract method
//Sample code:

abstract class Person{
  //Two abstract methods present in this abstract class
  void walk();
  void talk();
}

class Jay extends Person{
  @override //serve meio que para sobrescrever um metodo e seu significado
  void walk(){
    print("Jay can walk!");
  }
  @override //serve meio que para sobrescrever um metodo e seu significado
  void talk(){
    print("Jay can talk!");
  }
}

int main(){
  Jay novo_jay = new Jay();
  novo_jay.walk();
  novo_jay.talk();
  return 0;
}
