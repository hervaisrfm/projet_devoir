import 'dart:io';

String _inverserCasse(String c) {
  if (c.toUpperCase() == c && c.toLowerCase() != c) {
    return c.toLowerCase();
  } else if (c.toLowerCase() == c && c.toUpperCase() != c) {
    return c.toUpperCase();
  }
  return c;
}

bool _estChiffre(String c) {
  return c.codeUnitAt(0) >= 48 && c.codeUnitAt(0) <= 57;
}

String traiterChaine(String entree) {
  List<String> chars = entree.split('');
  
  List<String> chiffres = [];
  for (var c in chars) {
    if (_estChiffre(c)) chiffres.add(c);
  }
  
  List<String> chiffresInverses = chiffres.reversed.toList();
  
  int index = 0;
  List<String> resultat = [];
  
  for (var c in chars) {
    if (_estChiffre(c)) {
      resultat.add(chiffresInverses[index]);
      index++;
    } else {
      resultat.add(_inverserCasse(c));
    }
  }
  
  return resultat.join('');
}

void main() {
  stdout.write('Entrez une chaine : ');
  String? entree = stdin.readLineSync();
  
  if (entree == null || entree.isEmpty) {
    print('Chaine vide');
    return;
  }
  
  String sortie = traiterChaine(entree);
  print('Resultat : $sortie');
}