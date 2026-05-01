import 'package:flutter/material.dart';

/// Exercice 3 - Plusieurs TextField dans un seul Container
///
/// On peut mettre plusieurs TextField dans un seul Container
/// en utilisant Column, ListView ou Row comme enfant.
class Exercice3 extends StatelessWidget {
  const Exercice3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 3 : Plusieurs champs de saisie'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// --------------------------------------------------------
            /// ARGUMENTATION
            /// --------------------------------------------------------
            Card(
              color: Colors.blue[50],
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '📖 Argumentation :',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Oui, on peut ajouter plusieurs TextField dans un seul Container.\n\n'
                      'Le Container est un widget qui peut avoir un seul enfant (child). '
                      'Pour mettre plusieurs widgets, on utilise un widget multi-enfants '
                      'comme Column, Row ou ListView.\n\n'
                      'Cela permet de :\n'
                      '• Grouper logiquement des champs de formulaire\n'
                      '• Appliquer une décoration commune (bordure, fond, padding)\n'
                      '• Organiser la mise en page verticalement ou horizontalement',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            /// --------------------------------------------------------
            /// EXEMPLE 1 : Plusieurs TextField dans un Container avec Column
            /// --------------------------------------------------------
            const Text(
              'Exemple 1 : Formulaire vertical',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            
            /// Un seul Container qui contient plusieurs TextField
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[50],
              ),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Nom',
                      hintText: 'Entrez votre nom',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'exemple@gmail.com',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Téléphone',
                      hintText: '+261 32 00 000 00',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 12),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Message',
                      hintText: 'Votre message...',
                      prefixIcon: Icon(Icons.message),
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 30),
            
            /// --------------------------------------------------------
            /// EXEMPLE 2 : Plusieurs TextField dans un Container avec Row
            /// --------------------------------------------------------
            const Text(
              'Exemple 2 : Formulaire horizontal',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[50],
              ),
              child: Row(
                children: [
                  /// Premier champ
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'Début',
                        hintText: 'jj/mm/aaaa',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  /// Deuxième champ
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'Fin',
                        hintText: 'jj/mm/aaaa',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 30),
            
            /// --------------------------------------------------------
            /// EXEMPLE 3 : Container avec bordure commune
            /// --------------------------------------------------------
            const Text(
              'Exemple 3 : Carte avec plusieurs champs',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Informations de livraison',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Adresse',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Code postal',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Ville',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(double.infinity, 45),
                    ),
                    child: const Text('Valider'),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 30),
            
            /// --------------------------------------------------------
            /// CONCLUSION
            /// --------------------------------------------------------
            Card(
              color: Colors.green[50],
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '✅ Conclusion :',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Il est parfaitement possible d\'ajouter plusieurs TextField '
                      'dans un seul Container. Il suffit d\'utiliser un widget '
                      'conteneur multi-enfants (Column, Row, ListView) comme child '
                      'du Container. Le Container sert alors d\'enveloppe pour '
                      'appliquer un style, une décoration ou une mise en page commune.',
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