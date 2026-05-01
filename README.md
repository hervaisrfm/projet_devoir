# Exercices Dart

## EXERCICE I

### 1. Nombre le plus fréquent
plusFrequent.dart

### 2. Inversion casse + inversion chiffres
inversionCasseChiffre.dart

### 3. Plus grande différence entre nombres consécutifs
differenceConsecutifs.dart

## EXERCICE II

### 1. Suite de Fibonacci
fibonacci.dart

### 2. Nombre de voyelles
nbVoyelles.dart

### 3. Combinaisons de deux nombres égaux à une somme cible
Combinaison.dart




---------------------------------------------------




# Devoir Flutter - Arguments des exercices

## Exercice 1.1 : Centrer un champ de texte

### Méthode 1 : Widget Center

**Arguments :**
- Lisibilité : le nom du widget indique clairement l'intention
- Simplicité : pas de propriétés supplémentaires
- Standard Flutter : manière idiomatique de centrer

### Méthode 2 : Container alignment

**Arguments :**
- Flexibilité : permet des centrages partiels
- Unification : combine centrage + décoration
- Animations : plus simple pour animer la position

---

## Exercice 1.2 : Compteur de caractères

### Méthode 1 : onChanged

**Arguments :**
- Simplicité : 3 lignes de code suffisent
- Performance légère : pas de création de contrôleur
- Idéal pour un usage simple et ponctuel

### Méthode 2 : TextEditingController + addListener

**Arguments :**
- Puissance : permet de modifier le texte programmatiquement
- Réutilisabilité : le même contrôleur peut servir à plusieurs widgets
- Séparation des responsabilités : logique séparée de l'UI
- Standard pour les formulaires complexes

## Exercice 1.3 : Addition avec parse

### Étapes réalisées :

1. **Création des contrôleurs** : `TextEditingController` pour chaque champ
2. **Récupération des valeurs** : avec `.text` sur chaque contrôleur
3. **Conversion en nombres** : `int.parse()` pour transformer String → int
4. **Addition** : calcul simple de la somme
5. **Affichage du résultat** dans un widget Text

### Gestion des erreurs :
- Try/catch pour capturer les erreurs de conversion
- Vérification des champs vides
- Messages d'erreur clairs pour l'utilisateur

### Nettoyage mémoire :
- `.dispose()` des contrôleurs dans `dispose()`

## Exercice 1.4 : Décoration TextField

### Propriétés de decoration utilisées :

| Propriété | Rôle | Exemple |
|-----------|------|---------|
| `border` | Bordure du champ | `OutlineInputBorder()` |
| `hintText` | Texte grisé indicatif | `"Entrez votre nom"` |
| `labelText` | Étiquette flottante | `"Email"` |
| `prefixIcon` | Icône à gauche | `Icon(Icons.person)` |
| `suffixIcon` | Icône à droite | `Icon(Icons.search)` |
| `filled` | Active le remplissage | `true` |
| `fillColor` | Couleur de fond | `Colors.blue[50]` |
| `errorText` | Message d'erreur | `"Champ requis"` |
| `counterText` | Compteur personnalisé | `"Max 50 caractères"` |
| `helperText` | Texte d'aide | `"Entrez une adresse valide"` |

### Exemple d'utilisation complète :

```dart
TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Entrez votre adresse',
    labelText: 'Adresse',
    prefixIcon: Icon(Icons.home),
    suffixIcon: Icon(Icons.location_city),
    filled: true,
    fillColor: Colors.white,
    helperText: 'Votre adresse complète',
  ),
)

## Exercice 2 : Application simple

- Titre : **My Application**
- Texte centré : **Bienvenue**
- Bouton en bas : **VALIDER**
- Fond blanc
- Aucune action au clic

---

## Exercice 3 : Plusieurs TextField dans un Container

### Réponse : OUI, c'est possible

Le Container a un seul `child`. Pour mettre plusieurs TextField, on utilise :
- `Column` → disposition verticale
- `Row` → disposition horizontale
- `ListView` → liste défilante

### Exemple :
```dart
Container(
  decoration: BoxDecoration(border: Border.all()),
  child: Column(
    children: [
      TextField(decoration: InputDecoration(labelText: 'Nom')),
      TextField(decoration: InputDecoration(labelText: 'Email')),
    ],
  ),
)
