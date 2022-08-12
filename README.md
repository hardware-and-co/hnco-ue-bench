Comptoir du Hardware - Benchmark compilation UE 5.0.3
=====================================================

Benchmark de compilation utilisé pour les tests CPU du [Comptoir du Hardware](http://www.comptoir-hardware.com/). Clone, configure, lance une compilation de
l'Unreal Engine 5.0.3 et affiche le temps d'exécution de la compilation.

## Utilisation
Cliquez ou lancez dans une invite de commande `init-bench-ue4.bat` pour lancer la procédure de téléchargement des fichiers source Unreal Engine 5.0.3. Une fois celle-ci terminée, lancez `bench-ue4.bat`.

## Sortie
Lire les dernières lignes produites par la commande, de format :
`Build took hours:mins:secs.ms (total_secs.ms total)`

## Dépendances
### Git
Installez la version **portable** Windows de [Git](https://git-scm.com/download/win) (extraire au même endroit que le .bat),
cela devrait créer un dossier *PortableGit*.
### Visual Studio
Installez [Visual Studio Community](https://visualstudio.microsoft.com/vs/community/), cochez dans l'onglet *Workload* la case *Game development with C++*, ainsi que, dans l'onglet *Individual Components* cette fois-ci, les cases *.NET Framework 4.6.2 Targetting Pack*, *.NET Framework 4.6.2 SDK* et *MSBuild* (6,01 Go, peut nécessiter le redémarrage du système).

Copyright © 2000 Nicolas Derumigny <nd@comptoir-hardware.com>.
This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.
