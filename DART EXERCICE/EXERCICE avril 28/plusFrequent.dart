import 'dart:collection';
import 'dart:io';

/// Retourne le nombre le plus fréquent dans une liste d'entiers.
/// En cas d'égalité, retourne le premier trouvé.
int nombreLePlusFrequent(List<int> liste) {
  if (liste.isEmpty) {
    throw ArgumentError('La liste ne peut pas être vide');
  }

  // Compte les occurrences
  HashMap<int, int> frequentation = HashMap();

  for (int nombre in liste) {
    frequentation[nombre] = (frequentation[nombre] ?? 0) + 1;
  }

  // Trouve le nombre avec le maximum d'occurrences
  int nombreMax = liste.first;
  int maxCount = 0;

  for (var entry in frequentation.entries) {
    if (entry.value > maxCount) {
      maxCount = entry.value;
      nombreMax = entry.key;
    }
  }

  return nombreMax;
}

void main() {
  print('Entrez une liste de nombres séparés par des espaces :');
  
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Aucune donnée entrée.');
    return;
  }

  // Convertir la saisie en liste d'entiers
  List<int> nombres = input
      .split(' ')
      .map((e) => int.tryParse(e))
      .where((e) => e != null)
      .cast<int>()
      .toList();

  if (nombres.isEmpty) {
    print('Aucun nombre valide.');
    return;
  }

  int resultat = nombreLePlusFrequent(nombres);

  print('Liste : $nombres');
  print('Nombre le plus fréquent : $resultat');
}