//THE "SUPER" KEYWORD...
//The "super" keyword is used to refer to the immediate parent class of a class.
//The keyword can be used to refer to the super class version of a VARIABLE,
//PROPERTY, METHOD. The following example illustrates it:
//SO DA PARA USAR SUPER DENTRO DA CLASSE (NO ESCOPO DA CLASSE).

class Parent{
  void cout(){
    print("Hi, I am the parent method!");
  }
}

class Child extends Parent{
  @override
  void cout(){
    print("Hi, I am the child method!");
    super.cout(); //SO DA PARA USAR SUPER DENTRO DA CLASSE (NO ESCOPO DA CLASSE).
  }
}

int main(){
  var obj1 = new Parent();
  obj1.cout();
  var obj2 = new Child();
  obj2.cout();
  return 0;
}
