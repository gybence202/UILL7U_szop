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

1. Klónozd a repozitóriumot:
   ```bash
   git clone https://github.com/gybence202/UILL7U_szop/edit/main/SZOP_UILL7U_Film11/filmstreaming-app/README.md
   ```

2. Navigálj a projekt könyvtárába:
   ```bash
   cd filmstreaming-app
   ```

3. Telepítsd a függőségeket:
   ```bash
   npm install
   ```

4. Hozz létre egy `.env` fájlt a gyökérkönyvtárban, és add hozzá az adatbázis konfigurációt:
   ```env
    DATABASE_URL=mongodb://localhost:3000/sajatlista
    PORT=3000
    JWT_SECRET=your_jwt_secret
    IMAGE_BASE_URL=http://localhost:3000/public/images/


    DB_HOST=localhost
    DB_USER=root
    DB_PASSWORD=
    DB_NAME=sajatlista
    DB_DIALECT=mysql
   ```

5. Indítsd el az alkalmazást:
   ```bash
   npm start
   ```

6. Nyisd meg a böngészőt, és navigálj a `http://localhost:3000` címre az alkalmazás eléréséhez.

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

- Navigálj a bejelentkezési oldalra (`http://localhost:3000`).
- Add meg a felhasználóneved és jelszavad a bejelentkezéshez.
- Ha a hitelesítés sikeres, átirányít a saját film listádra.

### Filmek Kezelése

- Új film hozzáadásához kattints az "Új Hozzáadás" gombra, töltsd ki az űrlapot, és küldd el.
- Film szerkesztéséhez kattints a film kártyáján található szerkesztés gombra, végezd el a módosításokat, majd mentsd el.
- Film törléséhez kattints a film kártyáján található törlés gombra.

### Kijelentkezés

- Kattints a "Kijelentkezés" gombra a kijelentkezéshez.






