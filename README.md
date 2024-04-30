

# FirestoreLogin

FirestoreLogin est une application de démonstration permettant de mettre en œuvre un système de connexion basé sur Firestore, la base de données cloud de Firebase. Cette application est conçue pour montrer comment créer un système d'authentification simple et sécurisé pour vos applications web ou mobiles utilisant Firebase Authentication et Firestore.

## Installation

1. Clonez ce dépôt sur votre machine locale en utilisant la commande suivante :

   ```
   git clone https://github.com/Paul-FranckDencausse/FirestoreLogin.git
   ```

2. Accédez au répertoire du projet :

   ```
   cd FirestoreLogin
   ```

3. Installez les dépendances en exécutant la commande suivante :

   ```
   npm install
   ```

## Configuration

1. Assurez-vous d'avoir configuré votre projet sur Firebase et d'avoir activé Firestore et Firebase Authentication.
2. Créez un fichier `.env` à la racine du projet et ajoutez vos clés d'API Firebase comme suit :

   ```
   API_KEY=VOTRE_CLE_API
   AUTH_DOMAIN=VOTRE_AUTH_DOMAIN
   DATABASE_URL=VOTRE_URL_DE_BASE_DE_DONNEES
   PROJECT_ID=ID_DE_VOTRE_PROJET
   STORAGE_BUCKET=VOTRE_STORAGE_BUCKET
   MESSAGING_SENDER_ID=VOTRE_SENDER_ID
   APP_ID=ID_DE_VOTRE_APPLICATION
   ```

3. Modifiez les règles Firestore pour autoriser l'accès à la collection des utilisateurs :

   ```
   rules_version = '2';
   service cloud.firestore {
     match /databases/{database}/documents {
       match /users/{userId} {
         allow read, write: if request.auth.uid == userId;
       }
     }
   }
   ```

## Utilisation

1. Lancez l'application en exécutant la commande suivante :

   ```
   npm start
   ```

2. Ouvrez votre navigateur et accédez à l'URL [http://localhost:3000](http://localhost:3000) pour utiliser l'application.

## Fonctionnalités

- Connexion et inscription d'utilisateurs.
- Authentification basée sur Firebase Authentication.
- Stockage des données utilisateur dans Firestore.
- Interface utilisateur simple et conviviale.

## Contribution

Les contributions sont les bienvenues ! N'hésitez pas à ouvrir une issue pour signaler des bogues ou à proposer des améliorations.

## Licence

Ce projet est sous licence MIT. Pour plus d'informations, consultez le fichier [LICENSE](LICENSE).

---

N'oubliez pas d'ajuster ce README en fonction des spécificités de votre application et de fournir toutes les informations nécessaires pour que les utilisateurs puissent l'utiliser et le comprendre facilement.
