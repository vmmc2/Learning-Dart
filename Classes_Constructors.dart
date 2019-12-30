//INSTANCE VARIABLES
//Here`s how you declare instance variables:
class Point{
  //The first two are null because we just declared it, we didn`t assigned any
  //value.
  num x; //Initially null.
  num y; //Initially null.
  num z = 0; //Initially, every Point object starts with 0.
  //Remember that all unintialized instance variables have the value null
}

//CONSTRUCTORS: Eh bem parecido com C++, se liga...
class Point{
    //Variaveis --- Atributos
    int x;
    int y;
    //Metodos...
    Point(int x, int y){ //Constructor da classe Point
        //There is a better way to make a constructor...
        this.x = x;
        this.y = y;
    }
    //The "this" keyword refers to the current instance. Diferente do que rola em
    //C++: a gente usa "this.x" em Dart. Em C++ a gente usa: "this->x"
    //Use this only when there is a name conflict. Otherwise, 
    //Dart style omits the this.
}

//NAMED CONSTRUCTORS: Use a named constructor to implement multiple constructors
//for a class or to provide extra clarity.
class Ponto{
    num x;
    num y;
    Ponto(num a, num b){
      this.x = a;
      this.y = b;
    }
    //making a named constructor:
    Ponto.origem(){ //Construtor especifico para lidar com um ponto na origem
    //do plano cartesiano...
      this.x = 0;
      this.y = 0;
    }
    //Remember that constructors are not inherited, which means that a 
    //superclass’s named constructor is not inherited by a subclass. If 
    //you want a subclass to be created with a named constructor defined 
    //in the superclass, you must implement that constructor in the subclass.
}

//REDIRECTING CONSTRUCTORS: Sometimes a constructor’s only purpose 
//is to redirect to another constructor in the same class. 
//A redirecting constructor’s body is empty, 
//with the constructor call appearing after a colon (:).
class PT{
    num x, y;
    PT(num a, num b){
      this.x = a;
      this.y = b;
    }
    PT.alongXAxis(num c) : this(c, 0); //Chamando o constructor original (construtor de cima)..
}


int main(){
  //USING CLASS MEMBERS..
  //Dart is an object-oriented language with classes and mixin-based inheritance. 
  //Every object is an instance of a class, and all classes descend from Object.
  //Mixin-based inheritance means that although every class (except for Object) 
  //has exactly one superclass, 
  //a class body can be reused in multiple class hierarchies. 
  //Extension methods are a way to add functionality to a class 
  //without changing the class or creating a subclass.
  //When you call a method, you invoke it on an object: It has access to that object`s
  //functions and data
  //Use a dot(.) to refer to an instance variable or method.
  var p = Point(2,2); //Now p is an object of the Point class..
  //invoking distanceTo() method on p:
  num distance = p.distanceTo(Point(4,4));
  //Use: ?. instead of . to avoid an exception when the leftmost operand is null:
  //If p is non-null, set its y value to 4:
  p?.y = 4;
  //When you are using a constructor to create an object, you can use optionally the
  //keyword "new", just like in the example below:
  var p2 = new Point(2,3);
  //Version note: The keyword "new" became optional in Dart 2.

  //Some classes provide constant constructors. 
  //To create a compile-time constant using a constant 
  //constructor, put the const keyword before the constructor name:
  var w = const ImmutablePoint(1,1);
  //Constructing two identical compile-time constants results in a single, canonical instance:
  var a = const ImmutablePoint(1, 1);
  var b = const ImmutablePoint(1, 1);
  assert(identical(a, b)); //They are the same instance!!

  //GETTING AND OBJECT`S TYPE...
  //To get an object`s type at runtime, you can use Object`s runtimeType
  //property, which returns a Type object.
  a = Line(2,3,4,5);
  print("The type of a is: ${a.runtimeType}");

  //All instance variables generate an implicit getter method.
  //Non-final instance variables also generate an implicit setter method.
  //See the example below:
  class Point{
    int x;
    int y;
  }
  var point = Point();
  point.x = 4; //Use the setter method for x.
  assert(point.x == 4); //Use the getter method for x.
  assert(point.y == null); //Values default to null

  //CONSTRUCTORS ARE NOT INHERITED:
  //Subclasses don’t inherit constructors from their superclass. A subclass that
  //declares no constructors has only the default (no argument, no
  //name) constructor.
  return 0;
}
