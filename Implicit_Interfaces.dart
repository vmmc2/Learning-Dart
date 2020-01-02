//INTERFACES:
//Every class implicitly defines an interface containing all 
//the instance members of the class and of any interfaces it implements. 
//If you want to create a class A that supports class B’s API without 
//inheriting B’s implementation, class A should implement the B interface.
//A class implements one or more interfaces by declaring them in an implements 
//clause and then providing the APIs required by the interfaces. For example:

// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
}

//Here’s an example of specifying that a class implements multiple interfaces:
class Point implements Comparable, Location {...}
