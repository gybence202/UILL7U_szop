import Film from '../models/filmModel.js';

class FilmService {
    // Create new film
    async createFilm(filmData) {
        const lastFilm = await Film.findOne({ order: [['id', 'DESC']] });
        const newId = lastFilm ? lastFilm.id + 1 : 1;
        const newFilm = await Film.create({ id: newId, ...filmData });
        return newFilm;
    }

    // Get film by ID
    async getFilm(filmId) {
        const film = await Film.findByPk(filmId);
        return film;
    }

    // Update film by ID
    async updateFilm(filmId, updatedData) {
        const film = await Film.findByPk(filmId);
        if (!film) {
            return null;
        }
        await film.update(updatedData);
        return film;
    }

    // Delete film by ID
    async deleteFilm(filmId) {
        const film = await Film.findByPk(filmId);
        if (!film) {
            return null;
        }
        await film.destroy();
        return film;
    }

    // Get all films
    async getUserList() {
        const films = await Film.findAll();
        return films;
    }
}

export default new FilmService();