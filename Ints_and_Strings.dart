int main(){
    //Trabalhando com numeros...
    //1) Ints
    int x = 1; // -2e63 ate (2e63) - 1
    int hex = 0xDEADBEEF;
    print("Valor de hex: $hex");
    print(x);
    double y = 3.1417; //pi
    print("Valor de y: $y");
    //Trabalhando com os Asserts...
    var one = int.parse('22');
    var two = double.parse('1.10');
    String piAsString = 3.14159.toStringAsFixed(2);
    print("piAsString = $piAsString");
    String newval = 3.14159.toString();
    print("newval: $newval");
    
    //2) Strings...
    //Da pra usar tanto double quotes como single quotes para criar strings..
    //Mas eh melhor usar double quotes...
    String a = "Oi, eu sou o Goku";
    String b = 'Kakarotto...';
    print("$a $b");
    //Ainda temos o caractere '\n' para pular linha...
    //A funcao print() ja realiza uma quebra de linha automaticamente...
    //Metodo .toUpperCase() => Serve para deixar todas as letras maiusculas..
    String c = "Victinho Memes";
    print("${c.toUpperCase()}"); //Se for usar nao so variaveis como tambem metodos
    //Tem que usar: ${}. Se for so variaveis, use: $nome_da_variavel
    String d = "oie";
    print("${d}");
    //Por incrivel que pareca, da pra fazer concatenacao de strings mesmo que elas
    //estejam em linhas distintas kkkk (wtf). Segue o exemplo abaixo:
    var s1 = 'String '
        'concatenation '
        "works even over line breaks";
    print(s1); //Vai printar: "String concatenation works even over line breaks"
    
    return 0;
}
