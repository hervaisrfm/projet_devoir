import 'dart:io';

int plusGrandeDifferenceConsecutive(List<int> liste) {
  if (liste.length < 2) {
    return 0;
  }
  
  int maxDifference = 0;
  
  for (int i = 0; i < liste.length - 1; i++) {
    int difference = (liste[i + 1] - liste[i]).abs();
    if (difference > maxDifference) {
      maxDifference = difference;
    }
  }
  
  return maxDifference;
}

void main() {
  stdout.write('Entrez des nombres separes par des espaces : ');
  String? entree = stdin.readLineSync();
  
  if (entree == null || entree.isEmpty) {
    print('Liste vide');
    return;
  }
  
  List<int> nombres = entree.split(' ').map(int.parse).toList();
  
  int resultat = plusGrandeDifferenceConsecutive(nombres);
  
  print('Liste : $nombres');
  print('Plus grande difference consecutive : $resultat');
}