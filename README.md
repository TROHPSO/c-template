## Description
Mate.h présent dans ce repository reste un projet expérimentale plein d'erreur peuvent survenir à tout moment

- Simple
- Système de compilation non chronophage.
- Basé sur mate.h comme système de compilation alternative à CMake, Meson ou make. 
- Codesource 100% en C sous license MIT.
- Fonctionne avec Clang, GCC, TCC (TCC ne marche pas sous windows pour moi).
- Intégration facile avec des structures en Glob (unitybuild / jumbobuild)
- Déclaration d'instruction de compilation spécifique selon la plateforme.
- Compilation en parallèle (distributions des taches sur plusieurs cœurs du CPU), plutôt qu'en concurrentiel.
- Compilation incrémentale (recompile que les fichiers modifiés pour une optimisation des ressources).

## Comment utiliser
1. Sélectionner son compilateur dans [./mate.bat](./mate.bat) a l'emplacement de la variable "CC=ici"
2. [Configurer son environnement](#configuration-environnement)

Si vous n'avez pas de Toolchain pour programmer en C 
- Sous Windows : Vous pouvez y remedié simplement en ligne une ligne dans son terminal. 
    - `winget install LLVM.LLVM Microsoft.VisualStudio.BuildTools`. 
    - Ensuite installer les bibliothèques standard C dans Visual Studio Installer.

### Configuration environnement
```bat 
 .\mate.bat setup
```
- Cette commande permet de télécharge la bibliothèque de [mate.h](https://github.com/TomasBorquez/mate.h) 
‼️Relancer la commande pour télécharger la dernière version de mate.h.
### 

### Compiler le programme
```bat
.\mate.bat build
```
- Lire le [./mate.bat](./mate.bat)

### Lancement du programme et compilation incrémentale
```bat
.\mate.bat run
```
- Compilation incrémentale : Détecte automatiquement les changements dans la structure et compile seulement les changements pour ne pas tout recompiler et donc de perdre du temps et des ressources.

### Supprimer le repo git
```bat
.\mate.bat remove-git
```
## Compilation avancée pour bibliothèque externe
- [voir les examples](https://github.com/TomasBorquez/mate.h/tree/master/examples)  

### Ressources que je recommande
https://youtu.be/5GgtSkTFXSI
https://github.com/TomasBorquez/mate.h/
https://youtu.be/4r7860IR7-o
