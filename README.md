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
(en cours)