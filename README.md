Comptoir du Hardware - Benchmark compilation UE 4.22
====================================================

Benchmark de compilation utilisé pour les tests CPU du [Comptoir du Hardware](http://www.comptoir-hardware.com/). Clone, configure, lance une compilation de
l'Unreal Engine 4.22.2 et affiche le temps d'exécution de la compilation.

## Utilisation
Cliquez ou lancez dans une invite de commande `init-bench-ue4.bat` pour lancer la procédure de téléchargement des fichiers source Unreal Engine 4.22.2. Une fois celle-ci terminée, lancez `bench-ue4.bat`.

## Sortie
Lire les dernières lignes produites par la commande, de format :
`Build took hours:mins:secs.ms (total_secs.ms total)`

## Dépendances
### Git
Installez la version **portable** Windows de Git (extraire au même endroit que le .bat),
cela devrait créer un dossier *PortableGit*.
### Visual Studio
Installez [Visual Studio Community](https://visualstudio.microsoft.com/vs/community/), cochez les cases *Game development with C++* et, dans *fonctionnalités optionnelles*, la case *Unreal Engine installer* ainsi que *MSBuild* dans l'onglet *Individual Components* (6.65 Go, peut nécessiter le redémarrage du système).

Copyright © 2000 Nicolas Derumigny <nd@comptoir-hardware.com>.
This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.