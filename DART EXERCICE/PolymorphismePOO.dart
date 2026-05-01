// Classe abstraite Personne
abstract class Personne {
  String nom;
  String prenom;
  String dateNaissance;

  Personne(this.nom, this.prenom, this.dateNaissance);

  void afficherInfo() {
    print('$prenom $nom - Né(e): $dateNaissance');
  }

  String get nomComplet => '$prenom $nom';
}

// Classe Livre
class Livre {
  String titre;
  String auteur;
  String isbn;
  bool disponible;

  Livre({
    required this.titre,
    required this.auteur,
    required this.isbn,
    this.disponible = true,
  });

  void afficherDetails() {
    print('Titre: $titre | Auteur: $auteur | ISBN: $isbn | Disponible: $disponible');
  }
}

// Classe Bibliothecaire
class Bibliothecaire extends Personne {
  String numeroEmploye;
  List<Livre> livresGeres = [];

  Bibliothecaire(super.nom, super.prenom, super.dateNaissance, this.numeroEmploye);

  void ajouterLivre(Livre livre) {
    livresGeres.add(livre);
    print('Livre ajouté par $nomComplet');
  }

  void retirerLivre(Livre livre) {
    livresGeres.remove(livre);
    print('Livre retiré par $nomComplet');
  }

  @override
  void afficherInfo() {
    super.afficherInfo();
    print('Employé #$numeroEmploye | Livres gérés: ${livresGeres.length}');
  }
}

// Classe Adherant
class Adherant extends Personne {
  String numeroAdherant;
  List<Livre> livresEmpruntes = [];

  Adherant(super.nom, super.prenom, super.dateNaissance, this.numeroAdherant);

  void emprunterLivre(Livre livre) {
    if (livre.disponible) {
      livresEmpruntes.add(livre);
      livre.disponible = false;
      print('$nomComplet a emprunté: ${livre.titre}');
    } else {
      print('Livre non disponible');
    }
  }

  void retournerLivre(Livre livre) {
    if (livresEmpruntes.remove(livre)) {
      livre.disponible = true;
      print('$nomComplet a retourné: ${livre.titre}');
    }
  }

  @override
  void afficherInfo() {
    super.afficherInfo();
    print('Adhérant #$numeroAdherant | Livres empruntés: ${livresEmpruntes.length}');
  }
}

// Classe FemmeMenage
class FemmeMenage extends Personne {
  String horaires;

  FemmeMenage(super.nom, super.prenom, super.dateNaissance, this.horaires);

  void nettoyerBibliotheque() {
    print('$nomComplet nettoie la bibliothèque');
  }

  @override
  void afficherInfo() {
    super.afficherInfo();
    print('Horaires: $horaires');
  }
}

// Classe Bibliotheque
class Bibliotheque {
  String nom;
  List<Livre> catalogue = [];
  List<Personne> employes = [];

  Bibliotheque(this.nom);

  void afficherCatalogue() {
    print('\nCatalogue de $nom');
    for (var livre in catalogue) {
      livre.afficherDetails();
    }
  }

  void afficherPersonnel() {
    print('\nPersonnel de $nom');
    for (var personne in employes) {
      personne.afficherInfo();
      print('---');
    }
  }
}

void main() {
  // Création de la bibliothèque
  Bibliotheque biblio = Bibliotheque('Bibliothèque Centrale');

  // Création des livres
  Livre livre1 = Livre(titre: 'Lovako T8', auteur: 'Rakoto', isbn: '001');
  Livre livre2 = Livre(titre: 'Lovako T10', auteur: 'Rakoto', isbn: '002');

  biblio.catalogue.addAll([livre1, livre2]);

  // Création du personnel
  Bibliothecaire bibliothecaire = Bibliothecaire('Hervais', 'Rafidiarilala', '2005-12-28', 'BIB001');
  Adherant adherant = Adherant('Tojo', 'Raherinambinina', '2006-04-14', 'ADH001');
  FemmeMenage femmeMenage = FemmeMenage('Berthine', 'Lucie', '1975-07-10', '08h00-16h00');

  biblio.employes.addAll([bibliothecaire, adherant, femmeMenage]);

  // Opérations
  bibliothecaire.ajouterLivre(livre1);
  adherant.emprunterLivre(livre1);
  femmeMenage.nettoyerBibliotheque();

  biblio.afficherCatalogue();
  biblio.afficherPersonnel();
}