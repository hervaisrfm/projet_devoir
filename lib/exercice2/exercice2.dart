import 'package:flutter/material.dart';

/// Exercice 2 - Application simple
///
/// - Texte "Bienvenue" centré
/// - Bouton "VALIDER" en bas de l'écran
/// - Icône enveloppe (FAB) en bas à droite
/// - Pas d'action au clic
class Exercice2 extends StatelessWidget {
  const Exercice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Titre de l'application (comme sur la capture)
      appBar: AppBar(
        title: const Text(
          'My Application',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        actions: [
          /// Menu trois points en haut à droite
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      /// Fond rose pâle (comme sur la capture)
      backgroundColor: const Color(0xFFF8BBD9),

      /// Bouton flottant enveloppe en bas à droite (rose vif)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// Rien ne se produit (selon consigne)
        },
        backgroundColor: const Color(0xFFE91E8C),
        child: const Icon(Icons.email, color: Colors.white),
      ),

      /// Corps de l'application
      body: Column(
        children: [
          /// Espace flexible qui pousse le texte vers le centre
          const Spacer(),

          /// Texte "Bienvenue" centré, en bleu foncé / indigo
          const Center(
            child: Text(
              'Bienvenue',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A237E),
              ),
            ),
          ),

          /// Espace flexible qui pousse le bouton vers le bas
          const Spacer(),

          /// Bouton "VALIDER" en bas, style gris clair (comme sur la capture)
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0, right: 90.0),
            child: ElevatedButton(
              onPressed: () {
                /// Rien ne se produit (selon consigne)
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE0E0E0),
                foregroundColor: Colors.black87,
                elevation: 2,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
              ),
              child: const Text(
                'VALIDER',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}