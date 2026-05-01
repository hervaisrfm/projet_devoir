import 'dart:io';

void main() {
  stdout.write('Entrez un nombre n : ');
  String? entree = stdin.readLineSync();
  
  if (entree == null || entree.isEmpty) {
    print('Valeur invalide');
    return;
  }
  
  int n = int.parse(entree);
  
  if (n <= 0) {
    print('n doit être positif');
    return;
  }
  
  List<int> fibonacci = [];
  
  for (int i = 0; i < n; i++) {
    if (i == 0) {
      fibonacci.add(0);
    } else if (i == 1) {
      fibonacci.add(1);
    } else {
      fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
    }
  }
  
  print('Les $n premiers nombres de Fibonacci :');
  print(fibonacci.join(' , '));
}