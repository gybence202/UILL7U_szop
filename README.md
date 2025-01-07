# Film Streaming Application

## Áttekintés
A Film Streaming Application egy Node.js alapú alkalmazás, amely lehetővé teszi a felhasználók számára, hogy kezeljék a filmek és sorozatok listáját. Az alkalmazás támogatja a filmek hozzáadását, szerkesztését, törlését és megtekintését. Az alkalmazás tartalmaz felhasználói hitelesítést és munkamenet-kezelést is.

## Funkciók
- Felhasználói hitelesítés (bejelentkezés/kijelentkezés)
- Új filmek hozzáadása a listához
- Meglévő filmek szerkesztése
- Filmek törlése a listáról
- Az összes film megtekintése a felhasználó listájában

## Technológiák
- Node.js
- Express.js
- Sequelize (ORM)
- SQLite (adatbázis)
- HTML/CSS/JavaScript (frontend)
- Munkamenet-kezelés `express-session` segítségével

## Telepítés

1. Klónozza a repozitóriumot:
   ```bash
   git clone https://github.com/gybence202/UILL7U_szop
   ```

2. Navigáljon a projekt könyvtárába:
   ```bash
   cd filmstreaming-app
   ```

3. Telepítse a függőségeket:
   ```bash
   npm install
   ```

4. Hozzon létre egy `.env` fájlt a gyökérkönyvtárban, és adja hozzá az adatbázis konfigurációt:
   ```env
    DATABASE_URL=mongodb://localhost:3000/sajatlista
    PORT=3000
    JWT_SECRET=jwt_secret


    DB_HOST=localhost
    DB_USER=root
    DB_PASSWORD=
    DB_NAME=sajatlista
    DB_DIALECT=mysql
   ```

5. Indítsa el az alkalmazást:
   ```bash
   npm start
   ```

6. Nyissa meg a böngészőt, és navigáljon a `http://localhost:3000` címre az alkalmazás eléréséhez.

## Projekt Struktúra

```
filmstreaming-app/
│
├── src/
│   ├── config/
│   │   └── database.js
│   ├── controllers/
│   │   └── filmController.js
│   ├── models/
│   │   ├── filmModel.js
│   │   └── userModel.js
│   ├── routes/
│   │   ├── filmRoutes.js
│   │   └── userRoutes.js
│   ├── services/
│   │   ├── filmService.js
│   │   └── userService.js
│   ├── views/
│   │   ├── filmsTable.html
│   │   └── index.html
│   ├── style/
│   │   └── style.css
│   └── app.js
│
├── public/
│   └── images/
├── .env
├── package.json
├── .gitignore
└── README.md
```

## Használat

### Felhasználói Hitelesítés

- Navigáljon a bejelentkezési oldalra (`http://localhost:3000`).
- Adja meg a felhasználóneved és jelszavad a bejelentkezéshez. (test: user/1234)
- Ha a hitelesítés sikeres, átirányít a saját film listára.

### Filmek Kezelése

- Új film hozzáadásához kattintson az "Új Hozzáadás" gombra, töltse ki az űrlapot, és küldje el.
- Film szerkesztéséhez kattintson a film kártyáján található szerkesztés ikonra, végezze el a módosításokat, majd mentse el.
- Film törléséhez kattintson a film kártyáján található törlés gombra.

### Kijelentkezés

- Kattintson a "Kijelentkezés" gombra a kijelentkezéshez.






