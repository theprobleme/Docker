# Cours de Docker ESEO
$~~~~~~~~~~~$
## Démarrage

Pour démarrager l'application, ouvrez une invite de commande à l'endroit où vous avez placé l'archive et exécutez la commande :

```
tar -xvf PROJET.tar
```
Ensuite exécutez, les commandes suivantes :
```
cd /PROJET
docker-compose up -d
```

A ce moment-là Docker va lancer la création de 3 conteneurs :
- phpmyadmin réalisée à partir de l'image officielle phpmyadmin/phpmyadmin.
- apache2 réalisée à partir d'un Dockerfile dans le dossier apache2.
- mariadb réalisé à partir d'un Dockerfile dans le dossier mariadb.

On peut vérfier que les conteneurs sont bien lancées avec `docker ps` :
```
CONTAINER ID   IMAGE                          COMMAND                  CREATED              STATUS              PORTS                                       NAMES
c37332ce119c   phpmyadmin/phpmyadmin:latest   "/docker-entrypoint.…"   About a minute ago   Up About a minute   0.0.0.0:8080->80/tcp, :::8080->80/tcp       phpmyadmin
52383346ecad   projet_apache2                 "httpd -D FOREGROUND"    About a minute ago   Up About a minute   0.0.0.0:8000->80/tcp, :::8000->80/tcp       apache2
5555783f2e2a   projet_mariadb                 "/scripts/startbdd.sh"   About a minute ago   Up About a minute   0.0.0.0:3306->3306/tcp, :::3306->3306/tcp   mariadb
```

- Le site d'apache2 est accessible à l'IP : `http://localhost:8000`.
- Le site de phpmyadmin est accessible à l'IP : `http://localhost:8080`.
- La base de donnée tourne sur l'IP : `http://localhost:3306`.

$~~~~~~~~~~~$
## Objectifs
Les objectifs sont les suivants :
- La réalisation d'un conteneur d'un serveur web apache2 avec php.
- La réalisation d'un conteneur avec une base de données.

$~~~~~~~~~~~$
## Réalisation
En pratique 3 conteneurs on été réalisés :
- Un conteneur avec un site web apache2 avec php.
- Un conteneur avec une base de données mariadb.
- Un conteneur avec phpmyadmin.


$~~~~~~~~~~~$

## Validation
Pour le conteneur apache2 :
- Le serveur web tourne, il est possible de s'y connecter.
- Php est fonctionnel, il permet l'affichage d'un fichier `php.info`.

Pour le conteneur mariadb :
- Le serveur de base de donnée est fonctionnel, il est possible de le ping avec son port.
- Seul l'utilisateur `root` est définit.

Pour le conteneur phpmyadmin :
- Le site peut être ouvert.
- Il est possible de s'y connecter avec les identifiants de l'utilsateur root
  - ID : `root`.
  - MDP : `hello`.
