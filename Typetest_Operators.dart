//Type test operators
//We have these type test operators: "as", "is" and "is!"...

as  -> typecast (also used to specify library prefixes)
is  -> true if the object has the specified type 
is! -> false if the object has the specified type

The result of: obj is T is true if obj implements the interface specified by T 
For example: obj is Object is always true.

As we said above... we can use as to make a typecast to a specific type...
  
//Example os using is and then making an assignment...
if (emp is Person) {
  // Type check
  emp.firstName = 'Bob';
}

//Example of direclty using the "as" typetest operator...
(emp as Person).firstName = 'Bob';
