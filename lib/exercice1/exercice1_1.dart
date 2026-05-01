import 'package:flutter/material.dart';

/// Exercice 1.1 - Centrer un champ de texte dans un conteneur
/// 
/// Cet exercice présente deux méthodes différentes pour centrer
/// un TextField à l'intérieur d'un Container, avec leurs
/// arguments respectifs.
class Exercice1_1 extends StatelessWidget {
  const Exercice1_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 1.1 : Centrer un champ de texte'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// --------------------------------------------------------
            /// MÉTHODE 1 : Widget Center
            /// --------------------------------------------------------
            /// 
            /// **Principe :**
            /// - Center est un widget qui prend tout l'espace disponible
            /// - Il positionne automatiquement son enfant au milieu
            /// 
            /// **Arguments en faveur :**
            /// 1. **Lisibilité** : le nom du widget indique clairement l'intention
            /// 2. **Simplicité** : pas de propriétés supplémentaires à gérer
            /// 3. **Non-intrusif** : l'enfant conserve ses dimensions naturelles
            /// 4. **Standard Flutter** : c'est la manière idiomatique de centrer
            /// 
            /// **Cas d'usage idéal :**
            /// - Centrage parfait et symétrique
            /// - Quand on ne veut pas modifier la taille de l'enfant
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MÉTHODE 1 : Center widget',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text('Arguments : lisibilité, simplicité, standard Flutter'),
                  ],
                ),
              ),
            ),
            
            Container(
              height: 150,
              color: Colors.blueGrey[100],
              child: const Center(
                child: SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Champ centré (Méthode 1)',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 30),
            
            /// --------------------------------------------------------
            /// MÉTHODE 2 : Container avec propriété alignment
            /// --------------------------------------------------------
            /// 
            /// **Principe :**
            /// - Container possède une propriété 'alignment'
            /// - On lui donne Alignment.center pour centrer son enfant
            /// 
            /// **Arguments en faveur :**
            /// 1. **Flexibilité** : permet des centrages partiels (Alignment.centerLeft, etc.)
            /// 2. **Unification** : on peut combiner centrage + décoration + padding
            /// 3. **Performances** : un seul widget Container au lieu de deux
            /// 4. **Animations** : plus simple pour animer la position de l'enfant
            /// 
            /// **Cas d'usage idéal :**
            /// - Quand on a besoin de décorations sur le conteneur
            /// - Pour des centrages non symétriques (ex: aligné en haut à droite)
            /// - Si on veut animer le centrage
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MÉTHODE 2 : Container.alignment',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text('Arguments : flexibilité, unification, animations'),
                  ],
                ),
              ),
            ),
            
            Container(
              height: 150,
              color: Colors.blueGrey[100],
              alignment: Alignment.center,
              child: const SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Champ centré (Méthode 2)',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}