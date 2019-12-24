int main(){
    //3) Booleans: Sao aquelas variaveis que so podem assumir dois valores: true e false
    bool valor1 = true;
    bool valor2 = false;
    //Tanto true como false sao constantes em tempo de compilacao...
    print("Valor de valor1: $valor1 ---- Valor de valor2: $valor2");
    //Dart (as we already told) has type-safety, which means that we cannot code
    //like: if(nonbooleanValue) or assert(nonbooleanValue)...
    //Em outras palavras... nao da para colocar numeros dentro de ifs ou de asserts
    //Diferente do que acontece em C++ onde: 1 = true e 0 = false...

    //4)Lists (Listas):
    var lista = [1,2,3,4,5,6,7,8,9,0];
    //Da para fazer loops iterando com lists que nem a gente faz em C++ (GLORIA PORRA.)
    for(int i = 0; i < 10; i++){
        print("${lista[i]}");
    }
    //Talvez o container mais comum em qualquer linguagem de programacao eh o array
    //O array eh uma conjunto ordenado de objetos...
    //Em Dart, assim como em outras linguagens, temos que arrays = lists
    //Exemplo de uma simples lista em Dart:
    var lista1 = [1,2,3];
    print(lista1);
    //Lists tambem usam 0-based indexing como em qualquer outra linguagem de prog
    print(lista1[0]); //1
    print(lista1[2]); //3
    print("o tamanho da lista: ${lista1.length}");
    //Tem uma diferenca em relacao a outras linguagens de programacao: Aqui em Dart
    //.length nao eh um metodo mas sim um atributo/variavel da classe List...
    // lista1.length -> certo
    // lista1.length() -> errado
    //Index do ultimo elemento de uma list -> (lista.length - 1)
    //Lists sao uma parada mutavel.. ou seja da pra mudar de boa..
    print("\n\n\n\n");
    const lista3 = [1,2,3];
    print(lista3);
    //Nao da pra mudar uma const list.. Nem da pra redeclarar muito menos alterar
    //seus elementos de forma individual...
    ///lista3[1] = 1;
    //print(lista3);
    //Example using the spread operator(...)::::
    print("\n\n");
    var l = [1,2,3];
    var l2 = [4, 5];
    var l1 = [0, ...l2, ...l];
    print(l1);
    //Criando lists de diferentes tipos:
    print("porra\n\n");
    var numb = List<int>();
    var stringss = List<String>();
    var doublesss = List<double>();
    print("$numb $stringss $doublesss");



    return 0;
}
