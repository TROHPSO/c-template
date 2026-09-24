## Description
- Simple
- Système de construction non chronophage.
- Basé sur mate.h comme système de compilation alternative à CMake, Meson.. 
- Ecrit 100% en C.
- Fonctionne avec Clang, GCC, TCC (TCC ne marche sous windows pour moi).

## Comment utiliser
1. Sélectionner son compilateur dans [./mate.bat](./mate.bat) a l'emplacement de la variable "CC=ici"
2. [Configurer son environnement](#configuration-environnement)

Si vous n'avez pas de Toolchain pour programmer en C 
- Sous Windows : Y Remedie en une simple ligne à partir de son terminal 
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
- Compilation incrémentale : Détecte automatiquement les changements dans la structure et compile seulement les changements pour ne pas tout recompiler.


## Compilation avancée pour bibliothèque externe
- [voir les examples](https://github.com/TomasBorquez/mate.h/tree/master/examples)  