import 'dart:io';
import 'dart:math';

class Segtree{
    //data members...
    var t = List<int>();
    var a = List<int>();
    int n;
    //methods and constructors..
    Segtree(List<int> base, int tam){
        this.a = base;
        this.n = tam;
        t = new List<int>.filled(4*n, 0, growable: false);
        print(this.t);
    }
    void build(int v, int tl, int tr){
        if(tl == tr){
            t[v] = a[tl];
        }else{
            int tm = (tl + tr) ~/ 2;
            build(2*v, tl, tm);
            build(2*v + 1, tm + 1, tr);
            t[v] = t[2*v] + t[2*v + 1];
        }
    }
    void update(int v, int tl, int tr, int pos, int new_val){
        if(tl == tr){
          t[v] = new_val;
        }else{
          int tm = (tl + tr) ~/ 2;
          if(pos <= tm){
              update(2*v, tl, tm, pos, new_val);
          }else{
              update(2*v + 1, tm + 1, tr, pos, new_val);
          }
          t[v] = t[2*v] + t[2*v + 1];
        }
    }
    int query(int v, int tl, int tr, int l, int r){
      if(l > r){
        return 0;
      }
      if(tl == l && tr == r){
        return t[v];
      }
      int tm = (tl + tr) ~/ 2;
      return query(2*v, tl, tm, l, min(tm, r)) + query(2*v + 1, tm + 1, tl, max(tm + 1, l), r);
    }
}

int main(){
  print("Digite o tamanho do vetor:");
  var len = stdin.readLineSync();
  var randomizer = new Random();
  int t = int.parse(len);
  var basis = List<int> ();
  int ele;
  for(int i = 0; i < t; i++){
      len = stdin.readLineSync();
      ele = int.parse(len);
      basis.add(ele);
  }
  print(basis);
  var st = Segtree(basis, t);
  st.build(1, 0, t-1);
  len = stdin.readLineSync();
  int queries = int.parse(len);
  var left, right;
  int l, r;
  for(int i = 1; i <= queries; i++){
      left = stdin.readLineSync();
      l = int.parse(len);
      right = stdin.readLineSync();
      r = int.parse(len);
      int ans = st.query(1, 0, basis.length - 1, l, r);
      print(ans);
  }
  return 0;
}
