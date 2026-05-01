import 'dart:io';

void main() {
  stdout.write('Entrez une phrase : ');
  String? phrase = stdin.readLineSync();
  
  if (phrase == null || phrase.isEmpty) {
    print('Phrase vide');
    return;
  }
  
  String voyelles = 'aeiouyAEIOUY';
  int compteur = 0;
  
  for (int i = 0; i < phrase.length; i++) {
    if (voyelles.contains(phrase[i])) {
      compteur++;
    }
  }
  
  print('Nombre de voyelles : $compteur');
}