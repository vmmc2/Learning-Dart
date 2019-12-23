void main(){
    final String nome = "Victor";
    //nome = "Dale"; //Nao pode mudar uma variavel do tipo final
    const String dad = "Andros";
    //dad = "Misera"; //Mesma coisa vale para uma variavel do tipo const. Nao pode mudar...
    print(nome);
    print(dad);
    //Se for usar uma variavel const dentro de uma classe, use static const..
    const bar = 100000;
    const double atm = 1.01325 * bar;
    //Testando const e lists..
    final lista = [1,2,3];
    print(lista);
    lista.add(6);
    print(lista);
}
