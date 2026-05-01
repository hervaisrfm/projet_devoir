import 'package:flutter/material.dart';

/// Exercice 1.4 - Décoration TextField
///
/// Présentation des différentes décorations possibles pour un TextField
/// avec un exemple pour chaque étape.
class Exercice1_4 extends StatelessWidget {
  const Exercice1_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 1.4 : Décoration TextField'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// --------------------------------------------------------
            /// INTRODUCTION
            /// --------------------------------------------------------
            Card(
              color: Colors.blue[50],
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'InputDecoration permet de personnaliser l\'apparence '
                  'du TextField (bordures, icônes, texte indicatif, etc.)',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// 1. DÉCORATION DE BASE : border
            /// --------------------------------------------------------
            const Text(
              '1️ border : La bordure du champ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(), // Bordure simple
                hintText: 'Champ avec bordure',
              ),
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// 2. hintText : Texte indicatif
            /// --------------------------------------------------------
            const Text(
              '2️ hintText : Texte grisé à l\'intérieur',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Entrez votre nom ici...', // Texte indicatif
              ),
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// 3. labelText : Étiquette flottante
            /// --------------------------------------------------------
            const Text(
              '3️ labelText : Étiquette qui monte quand on tape',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Email', // Étiquette flottante
                hintText: 'exemple@gmail.com',
              ),
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// 4. prefixIcon : Icône à gauche
            /// --------------------------------------------------------
            const Text(
              '4️ prefixIcon : Icône avant le texte',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Mot de passe',
                prefixIcon: const Icon(Icons.lock), // Icône à gauche
                hintText: 'Entrez votre mot de passe',
              ),
              obscureText: true, // Cache le texte (pour mot de passe)
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// 5. suffixIcon : Icône à droite
            /// --------------------------------------------------------
            const Text(
              '5️ suffixIcon : Icône après le texte',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Recherche',
                suffixIcon: const Icon(Icons.search), // Icône à droite
                hintText: 'Rechercher...',
              ),
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// 6. filled + fillColor : Remplissage coloré
            /// --------------------------------------------------------
            const Text(
              '6️ filled + fillColor : Fond coloré',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                filled: true, // Active le remplissage
                fillColor: Colors.blue[50], // Couleur de fond
                labelText: 'Message',
                hintText: 'Écrivez votre message...',
              ),
              maxLines: 3, // Multilignes
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// 7. errorText : Message d'erreur
            /// --------------------------------------------------------
            const Text(
              '7️ errorText : Message d\'erreur',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Confirmation',
                errorText: 'Ce champ est requis', // Message d'erreur
                hintText: 'Confirmez votre mot de passe',
              ),
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// 8. counterText : Compteur personnalisé
            /// --------------------------------------------------------
            const Text(
              '8️ counterText : Compteur de caractères',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Commentaire',
                counterText: 'Maximum 50 caractères', // Texte personnalisé
                hintText: 'Votre commentaire...',
              ),
              maxLength: 50, // Active le compteur automatique
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// 9. EXEMPLE COMPLET : Toutes les décorations combinées
            /// --------------------------------------------------------
            const Text(
              '9️ Exemple complet : Toutes les décorations',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              color: Colors.grey[50],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        // Bordure
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        // Texte indicatif
                        hintText: 'Entrez votre adresse',
                        // Étiquette flottante
                        labelText: 'Adresse',
                        // Icône à gauche
                        prefixIcon: const Icon(Icons.home),
                        // Icône à droite
                        suffixIcon: const Icon(Icons.location_city),
                        // Fond coloré
                        filled: true,
                        fillColor: Colors.white,
                        // Compteur
                        counterText: 'Optionnel',
                        // Helper text
                        helperText: 'Votre adresse complète',
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '💡 Résumé des décorations utilisées :',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '• border : OutlineInputBorder (bordure arrondie)\n'
                      '• hintText : Texte grisé indicatif\n'
                      '• labelText : Étiquette qui flotte\n'
                      '• prefixIcon : Icône à gauche\n'
                      '• suffixIcon : Icône à droite\n'
                      '• filled + fillColor : Fond blanc\n'
                      '• counterText : Affichage personnalisé\n'
                      '• helperText : Petit texte d\'aide',
                      style: TextStyle(fontSize: 11),
                    ),
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