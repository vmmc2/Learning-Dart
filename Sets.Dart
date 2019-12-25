int main(){
  var conjunto = {'sodio', 'potassio', 'magnesio'};
  for(var dale in conjunto){
    print(dale);
  }
  print("\n\n");
  //Formas diferentes de declarar um Set...
  //1)
  Set<String> nomes = {};
  print(nomes);
  //2)
  var nome = Set<String>();
  print(nome);
  //3)
  var conj = <String>{};
  print(conj);

  return 0;
}
