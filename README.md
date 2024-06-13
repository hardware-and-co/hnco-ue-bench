Hardware & Co - Benchmark compilation UE 5.4.2
==============================================

Benchmark de compilation utilisé pour les tests CPU de [Hardware & Co](https://hardwareand.co/). Clone, configure, lance une compilation de
l'Unreal Engine 5.4.2 et affiche le temps d'exécution de la compilation.

## Utilisation
Cliquez ou lancez dans une invite de commande `init-bench-ue.bat` pour lancer la procédure de téléchargement des fichiers source Unreal Engine 5.4.2. Une fois celle-ci terminée, lancez `bench-ue.bat`.

## Sortie
Lire les dernières lignes produites par la commande, de format :
`Build took hours:mins:secs.ms (total_secs.ms total)`

## Dépendances
### Git
Installez la version **portable** Windows de [Git](https://git-scm.com/download/win) (extraire au même endroit que le .bat),
cela devrait créer un dossier *PortableGit*.
### Visual Studio
Installez [Visual Studio Community](https://visualstudio.microsoft.com/vs/community/), cochez dans l'onglet *Gaming* les cases *Game development with C++* et *.NET desktop development*.

Copyright © 2000 Nicolas Derumigny <nicolas.d@hardwareand.co>.
This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.
