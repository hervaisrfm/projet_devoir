import 'package:flutter/material.dart';

/// Exercice 1.3 - Addition de deux nombres avec parse
///
/// Utilisation de deux TextField avec leurs contrôleurs respectifs
/// Conversion des chaînes en nombres avec int.parse()
class Exercice1_3 extends StatefulWidget {
  const Exercice1_3({super.key});

  @override
  State<Exercice1_3> createState() => _Exercice1_3State();
}

class _Exercice1_3State extends State<Exercice1_3> {
  // Création des deux contrôleurs (un pour chaque champ)
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  
  // Variable pour stocker le résultat
  String _resultat = "0";
  String _erreur = "";

  /// Fonction qui additionne les deux nombres
  void _additionner() {
    setState(() {
      _erreur = ""; // Efface l'erreur précédente
      
      try {
        // Récupérer les textes des deux champs
        String texte1 = _controller1.text;
        String texte2 = _controller2.text;
        
        // Vérifier si les champs sont vides
        if (texte1.isEmpty || texte2.isEmpty) {
          _erreur = "Veuillez remplir les deux champs";
          _resultat = "0";
          return;
        }
        
        // Conversion en nombres avec parse
        int nombre1 = int.parse(texte1);
        int nombre2 = int.parse(texte2);
        
        // Addition
        int somme = nombre1 + nombre2;
        
        // Affichage du résultat
        _resultat = somme.toString();
        
      } catch (e) {
        // Gestion d'erreur si l'utilisateur entre autre chose qu'un nombre
        _erreur = "Erreur : Veuillez entrer des nombres valides";
        _resultat = "0";
      }
    });
  }

  @override
  void dispose() {
    // Nettoyer les contrôleurs pour libérer la mémoire
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 1.3 : Addition avec parse'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// --------------------------------------------------------
            /// EXPLICATION DE L'EXERCICE
            /// --------------------------------------------------------
            Card(
              color: Colors.blue[50],
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '📖 Étapes réalisées :',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text('1. Création de deux TextField avec leurs contrôleurs'),
                    Text('2. Récupération des valeurs avec .text'),
                    Text('3. Conversion en int avec int.parse()'),
                    Text('4. Addition des deux nombres'),
                    Text('5. Affichage du résultat'),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// PREMIER CHAMP DE TEXTE
            /// --------------------------------------------------------
            const Text(
              'Nombre 1 :',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez un nombre (ex: 10)',
                labelText: 'Premier nombre',
                prefixIcon: Icon(Icons.numbers),
              ),
              keyboardType: TextInputType.number, // Clavier numérique
            ),
            
            const SizedBox(height: 16),
            
            /// --------------------------------------------------------
            /// DEUXIÈME CHAMP DE TEXTE
            /// --------------------------------------------------------
            const Text(
              'Nombre 2 :',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller2,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez un nombre (ex: 5)',
                labelText: 'Deuxième nombre',
                prefixIcon: Icon(Icons.numbers),
              ),
              keyboardType: TextInputType.number,
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// BOUTON POUR ADDITIONNER
            /// --------------------------------------------------------
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _additionner,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  'Additionner',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// AFFICHAGE DU RÉSULTAT
            /// --------------------------------------------------------
            Card(
              color: Colors.green[50],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Résultat :',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _resultat,
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            /// --------------------------------------------------------
            /// AFFICHAGE DES ERREURS
            /// --------------------------------------------------------
            if (_erreur.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Card(
                  color: Colors.red[50],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _erreur,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
            
            const SizedBox(height: 16),
            
            /// --------------------------------------------------------
            /// EXPLICATION DU CODE
            /// --------------------------------------------------------
            Card(
              color: Colors.grey[100],
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '💡 Explication du code :',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text('• TextEditingController : permet de contrôler chaque champ'),
                    Text('• .text : récupère la valeur tapée'),
                    Text('• int.parse() : convertit String en int'),
                    Text('• try/catch : gère les erreurs (si texte non numérique)'),
                    Text('• .dispose() : libère les contrôleurs'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}