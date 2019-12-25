import 'dart:io';
import 'dart:math';

bool binary_search(int number, var array){
    bool achei = false;
    int begin = 0;
    int end = array.length - 1;
    while(begin <= end){
      double medium = (begin + end)/2;
      int mid = medium.floor();
      if(number == array[mid]){
        achei = true;
        return achei;
      }
      if(number < array[mid]){
        end = mid - 1;
      }
      if(number > array[mid]){
        begin = mid + 1;
      }
    }
    return achei;
}

int main(){
    var array = List<int>();
    print("Digite o tamanho do array");
    var tam = stdin.readLineSync();
    int realtam = int.parse(tam);
    for(int i = 0; i < realtam; i++){
        var elemento = stdin.readLineSync();
        var el = int.parse(elemento);
        array.add(el);
    }
    array.sort();
    print(array);
    print("Digite o numero que vc deseja procurar no array:");
    var n = stdin.readLineSync();
    int nu = int.parse(n);
    bool achei = binary_search(nu, array);
    if(achei == true){
      print("O numero ta presente no array dado");
    }else{
      print("O numero nao ta presente no array dado");
    }
    return 0;
}
