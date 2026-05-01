import 'dart:io';

List<List<int>> trouverCombinaisons(List<int> liste, int somme) {
  Set<int> vus = {};
  List<List<int>> resultat = [];
  
  for (int nombre in liste) {
    int complement = somme - nombre;
    
    if (vus.contains(complement)) {
      resultat.add([complement, nombre]);
    }
    
    vus.add(nombre);
  }
  
  return resultat;
}

void main() {
  stdout.write('Entrez les nombres separes par des espaces : ');
  String? entreeNombres = stdin.readLineSync();
  
  if (entreeNombres == null || entreeNombres.isEmpty) {
    print('Liste vide');
    return;
  }
  
  stdout.write('Entrez la somme cible : ');
  String? entreeSomme = stdin.readLineSync();
  
  if (entreeSomme == null || entreeSomme.isEmpty) {
    print('Somme invalide');
    return;
  }
  
  List<int> nombres = entreeNombres.split(' ').map(int.parse).toList();
  int somme = int.parse(entreeSomme);
  
  List<List<int>> combinaisons = trouverCombinaisons(nombres, somme);
  
  print('Liste : $nombres');
  print('Somme cible : $somme');
  print('Combinaisons : $combinaisons');
}