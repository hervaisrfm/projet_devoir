import 'package:flutter/material.dart';

/// Exercice 1.2 - Ajouter un compteur de caractères à un TextField
///
/// Ce fichier présente deux méthodes pour ajouter un compteur
/// de caractères à la propriété counterText d'un TextField.
class Exercice1_2 extends StatefulWidget {
  const Exercice1_2({super.key});

  @override
  State<Exercice1_2> createState() => _Exercice1_2State();
}

class _Exercice1_2State extends State<Exercice1_2> {
  // Contrôleur pour la méthode 2
  final TextEditingController _controller = TextEditingController();
  int _charCountMethode2 = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _charCountMethode2 = _controller.text.length;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 1.2 : Compteur de caractères'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// --------------------------------------------------------
            /// MÉTHODE 1 : Avec onChanged (le plus simple)
            /// --------------------------------------------------------
            /// 
            /// **Comment ça marche :**
            /// - On utilise le callback onChanged du TextField
            /// - À chaque frappe, on met à jour une variable
            /// - On affiche le compteur dans un Text en dessous
            /// 
            /// **Arguments :**
            /// 1. Ultra-simple à implémenter (3 lignes de code)
            /// 2. Performance légère (ne recrée pas le contrôleur)
            /// 3. Idéal pour un usage ponctuel
            /// 
            /// **Inconvénients :**
            /// - Besoin d'un StatefulWidget
            /// - Moins réutilisable
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MÉTHODE 1 : onChanged',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Arguments : simplicité, performance légère'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            _Methode1Compteur(),
            
            const SizedBox(height: 30),
            
            /// --------------------------------------------------------
            /// MÉTHODE 2 : Avec TextEditingController + addListener
            /// --------------------------------------------------------
            /// 
            /// **Comment ça marche :**
            /// - On crée un TextEditingController
            /// - On ajoute un listener qui réagit aux changements
            /// - On met à jour l'affichage via setState
            /// 
            /// **Arguments :**
            /// 1. Plus puissant (peut modifier le texte programmatiquement)
            /// 2. Réutilisable (même contrôleur pour plusieurs widgets)
            /// 3. Séparation des responsabilités (logique vs UI)
            /// 4. Standard pour les formulaires complexes
            /// 
            /// **Inconvénients :**
            /// - Plus de code à écrire
            /// - Nécessite de disposer le contrôleur (mémoire)
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MÉTHODE 2 : TextEditingController + addListener',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Arguments : puissance, réutilisabilité, séparation'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            _Methode2Compteur(controller: _controller, charCount: _charCountMethode2),
          ],
        ),
      ),
    );
  }
}

/// Widget pour la méthode 1 (onChanged)
class _Methode1Compteur extends StatefulWidget {
  const _Methode1Compteur();

  @override
  State<_Methode1Compteur> createState() => _Methode1CompteurState();
}

class _Methode1CompteurState extends State<_Methode1Compteur> {
  int _charCount = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'Tapez du texte...',
            labelText: 'Méthode 1 : avec onChanged',
          ),
          onChanged: (value) {
            setState(() {
              _charCount = value.length;
            });
          },
        ),
        const SizedBox(height: 8),
        Text(
          'Caractères : $_charCount / 100',
          style: TextStyle(
            fontSize: 14,
            color: _charCount > 100 ? Colors.red : Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

/// Widget pour la méthode 2 (controller + listener)
class _Methode2Compteur extends StatelessWidget {
  final TextEditingController controller;
  final int charCount;

  const _Methode2Compteur({
    required this.controller,
    required this.charCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'Tapez du texte...',
            labelText: 'Méthode 2 : avec Controller + Listener',
          ),
          maxLength: 100, // Propriété counterText automatique !
        ),
        const SizedBox(height: 8),
        Text(
          'Compteur personnalisé : $charCount / 100',
          style: TextStyle(
            fontSize: 14,
            color: charCount > 100 ? Colors.red : Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.blue[50],
          child: const Text(
            '💡 NB : Avec maxLength, Flutter affiche automatiquement '
            'un compteur (counterText). On peut aussi en ajouter un manuellement.',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}