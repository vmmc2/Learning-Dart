//CLASS INHERITANCE IN DART//
//Dart supports the concept of Inheritance, which is the ability of a program to create
//new classes from an existing class. The class that is extended to create a newer
//class is called the parent/super class. The newly created class is called the
//child/sub class.

//A class inherits another class using the "extends" keyword. Child classes inherits
//all properties (data members) and methods except constructors from the parent
//class.
//Isso quer dizer que a subclass tem todos os metodos da superclass exatamente
//da forma que eles foram definidos na superclass. Se quisermos alerar o corpo
//desse metodos, devemos usar o recurso @override...

//Syntax..
//class child_class_name extends parent_class_name{
    //content...
//}

//Obs: Dart does not support multiple inheritance.

//Types of INheritance:
/*
Single - Every class can at the most extend from one parent class..
Multiple - A class can inherit from multiple classes. (Does Dart support this?)
Multi-Level - A class can inherit from another child class...
*/

//Nesse lance de inheritance multi-level meio que da pra fazer uma recursao 
//de herancas em cadeia algo do tipo: Classe A -> Classe B -> Classe C -> ... -> Classe Z

//Exemplo de Multi-Level Inheritance:
class Root{
  String str;
}

class Child extends Root{} //Classe Root -> Classe Child
class Leaf extends Child{} //Classe Child -> Classe Leaf
//De quebra a gente tem que: Leaf herdou todos os data_members/methods de Root e Child

void main(){
  var obj = new Leaf();
  obj.str = 'hello';
  print(obj.str); //Como output, isso vai fornecer "hello"
  return 0;
}

//Dart - Class Inheritance and Method Overriding...
//Method overriding is a mechanismo by which the child class redefines a method
//in its parent class. The following example illustrates the same.

class Parent{
  void m1(int a){
    print("Value of a: ${a}");
  }
}

class Child extends Parent{
  @override
  void m1(int b){
    print("dale meu bom");
  }
}

void main(){
  var obj1 = new Parent();
  obj1.m1(12);
  var obj2 = new Child();
  obj2.m1(3);
  obj1.m1(13);
  return;
}
