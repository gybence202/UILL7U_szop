// filepath: /c:/Users/gyorf/Desktop/EKKE/SZOP_UILL7U_Film11/filmstreaming-app/src/services/filmService.js
import Film from '../models/filmModel.js';

class FilmService {
    async createFilm(filmData) {
        const newFilm = await Film.create(filmData);
        return newFilm;
    }

    async getFilm(filmId) {
        const film = await Film.findByPk(filmId);
        return film;
    }

    async updateFilm(filmId, updatedData) {
        const film = await Film.findByPk(filmId);
        if (!film) {
            return null;
        }
        await film.update(updatedData);
        return film;
    }

    async deleteFilm(filmId) {
        const film = await Film.findByPk(filmId);
        if (!film) {
            return null;
        }
        await film.destroy();
        return film;
    }

    async getUserList() {
        const films = await Film.findAll();
        return films;
    }
}

export default new FilmService();