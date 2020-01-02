//1. METHODS: Are functions that provide behavior for an object...

//2. Instance Methods: On objects can access instance variables and this.
//In the following code snippet we have an example of an instance method:
import 'dart:math';

class Point{
  num x, y; //variaveis presentes nessa classe

  Point(this.x, this.y); //constructor dessa classe que ja faz a atribuicao automaticamente

  num distanceTo(Point outro){ //metodo que calcula distancia entre dois pontos
    var dx = x - outro.x;
    var dy = y - outro.y;
    return sqrt((dx*dx) + (dy*dy));
  }
}

//3. Getters and Setters: These are special methods that provide read and write
//access to an object`s properties (ou seja, permite que a gente possa alterar
//os membros e propriedades de um objeto). Recall that each instance variable has
//an implicit getter, plus a setter if appropriate. You can create additional
//properties.

class Rectangle{
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  //Define two calculated properties: right and bottom...
  //Tipo perceba que as variaveis: "right" e "bottom" nao foram declaradas logo
  //de cara
  //A gente define tanto right como bottom fazendo uso dos getters e setters
  num get right => left + width;
  //com get a gente define o valor para right(nesse caso right = left + width)
  set right(num value) => left = value - width;
  //aqui a gente ta redefinindo left baseado no na nova atribuicao feita para right
  num get bottom => top - height;
  //msm coisa que a gente fez la em cima
  set bottom(num value) => top = value + height;
  //Perceba que a gente nunca muda nem width nem height...
}

//4. Abstract Methods: instance, getter, and setter methods can be abstract,
// defining an interface but leaving its implementation up to other classes
// ABSTRACT METHODS CAN ONLY EXIST INSIDE ABSTRACT CLASSES...
// TO MAKE A METHOD ABSTRACT, USE A SEMICOLON (;) INSTEAD OF A METHOD BODY
//Metodo abstrato eh um metodo no qual eu apenas o declaro dentro da classe
//mas n faco sua implementacao... sua implementacao fica para outro class.
abstract class Doer{
  //Define instance variables and methods...

  void doSomething(); //Defining an abstract method...
}

class EffectiveDoer extends Doer{
  void doSomething(){
    //provite and implementation... so the method is not abstract here...
  }
}

//5. Abstract Classes: Use the "abstract" modifier keyword to define an abstract
//class - this is a class that cannot be instantiated (i.e: it is not possible to
//create an object that belongs to that class. All we can do is extend this abstract
//class e priu!). Abstract classes are useful for defininf interfaces, often with
//some implementation. If you want your abstract class to be instantiable, define 
//a factory constructor...

//This class is declared abstract and thus can`t be instantiated...
abstract class Ponto{
  num x, y, z;
  Ponto(num xcoord, num ycoord, num zcoord){
    x = xcoord;
    y = ycoord;
    z = zcoord;
  }
  double distanceTo(Ponto other); //abstract method
}

int main(){
  var rect = Rectangle(3, 10, 7, 5);
  print(rect.bottom);
  return 0;
}
