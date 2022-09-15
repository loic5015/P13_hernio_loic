## Résumé

Site web d'Orange County Lettings

## Développement local

### Prérequis

- Compte GitHub avec accès en lecture à ce repository
- Git CLI
- SQLite3 CLI
- Interpréteur Python, version 3.6 ou supérieure

Dans le reste de la documentation sur le développement local, il est supposé que la commande `python` de votre OS shell exécute l'interpréteur Python ci-dessus (à moins qu'un environnement virtuel ne soit activé).

### macOS / Linux

#### Cloner le repository

- `cd /path/to/put/project/in`
- `git clone https://github.com/OpenClassrooms-Student-Center/Python-OC-Lettings-FR.git`

#### Créer l'environnement virtuel

- `cd /path/to/Python-OC-Lettings-FR`
- `python -m venv venv`
- `apt-get install python3-venv` (Si l'étape précédente comporte des erreurs avec un paquet non trouvé sur Ubuntu)
- Activer l'environnement `source venv/bin/activate`
- Confirmer que la commande `python` exécute l'interpréteur Python dans l'environnement virtuel
`which python`
- Confirmer que la version de l'interpréteur Python est la version 3.6 ou supérieure `python --version`
- Confirmer que la commande `pip` exécute l'exécutable pip dans l'environnement virtuel, `which pip`
- Pour désactiver l'environnement, `deactivate`

#### Exécuter le site

- `cd /path/to/Python-OC-Lettings-FR`
- `source venv/bin/activate`
- `pip install --requirement requirements.txt`
- `python manage.py runserver`
- Aller sur `http://localhost:8000` dans un navigateur.
- Confirmer que le site fonctionne et qu'il est possible de naviguer (vous devriez voir plusieurs profils et locations).

#### Linting

- `cd /path/to/Python-OC-Lettings-FR`
- `source venv/bin/activate`
- `flake8`

#### Tests unitaires

- `cd /path/to/Python-OC-Lettings-FR`
- `source venv/bin/activate`
- `pytest`

#### Base de données

- `cd /path/to/Python-OC-Lettings-FR`
- Ouvrir une session shell `sqlite3`
- Se connecter à la base de données `.open oc-lettings-site.sqlite3`
- Afficher les tables dans la base de données `.tables`
- Afficher les colonnes dans le tableau des profils, `pragma table_info(Python-OC-Lettings-FR_profile);`
- Lancer une requête sur la table des profils, `select user_id, favorite_city from
  Python-OC-Lettings-FR_profile where favorite_city like 'B%';`
- `.quit` pour quitter

#### Panel d'administration

- Aller sur `http://localhost:8000/admin`
- Connectez-vous avec l'utilisateur `admin`, mot de passe `Abc1234!`

### Windows

Utilisation de PowerShell, comme ci-dessus sauf :

- Pour activer l'environnement virtuel, `.\venv\Scripts\Activate.ps1` 
- Remplacer `which <my-command>` par `(Get-Command <my-command>).Path`
test

### Lancement des tests automatises et deploiement via circleCI et heroku

Prerequis:
- Creer ou avoir un compte DockerHub
- Creer ou avoir un compte CircleCI
- Creer ou avoir un compte Heroku
- Dans CircleCI lie votre compte Github a CircleCI

#### CircleCi

##### menu Projects:
- Selectionner votre projet et cliquer sur Set Up Project.
- Dans Pop up, choisir Fastest (config.yml deja present dans repo)
##### menu organization Settings
- Creer un fichier de contexts
- Declarer les variables suivantes:
- `DOCKERHUB_PASSWORD`
- `DOCKERHUB_USERNAME`
- `HEROKU_API_KEY` (voir chapitre Heroku)
- `HEROKU_APP_NAME` (voir chapitre Heroku = nom du projet)
- Changer le nom de fichier <django_p13_context> avec le nom de votre fichier de context dans config.yml

#### Heroku
- Creer un nouveau projet
- Recuperer l'API KEY dans settings de votre compte
- mettre a jour fichier contexts dans CircleCi
- mettre a jour le fichier settings.py renseigner le ALLOWED_HOSTS = ['<nom du projet>.herokuapp.com']

#### Sentry
- Creer un nouveau projet django
- mettre a jour le dsn de sentry dans settings.py
- Tester la conformite de Sentry en allant sur l'endpoint sentry_debug/


#### Principe de fonctionemment

##### Pytest
- Pytest sera lance a chaque commit qui sera pushe sur le repo dans Github sur toutes les branches

##### container docker
- Un nouveau docker sera cree a chaque modification de la branche main apres un succes sur les test automatises.
- L'application sera disponible sur Heroku au lancement en cliquant sur open App dans Activity

#### Sentry
- Vous pourrez monitorer et visualiser les bugs en vous connectant sur votre compte Sentry

