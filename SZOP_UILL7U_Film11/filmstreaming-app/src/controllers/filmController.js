import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

class FilmController {
    constructor(filmService) {
        this.filmService = filmService;
    }

    async createFilm(req, res) {
        try {
            const filmData = req.body;
            const newFilm = await this.filmService.createFilm(filmData);
            res.status(201).json(newFilm);
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    }

    async getFilm(req, res) {
        try {
            const filmId = req.params.id;
            const film = await this.filmService.getFilm(filmId);
            if (!film) {
                return res.status(404).json({ message: 'Film not found' });
            }
            res.status(200).json(film);
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    }

    async updateFilm(req, res) {
        try {
            const filmId = req.params.id;
            const updatedData = req.body;
            const updatedFilm = await this.filmService.updateFilm(filmId, updatedData);
            if (!updatedFilm) {
                return res.status(404).json({ message: 'Film not found' });
            }
            res.status(200).json(updatedFilm);
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    }

    async deleteFilm(req, res) {
        try {
            const filmId = req.params.id;
            const deletedFilm = await this.filmService.deleteFilm(filmId);
            if (!deletedFilm) {
                return res.status(404).json({ message: 'Film not found' });
            }
            res.status(204).send();
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    }

    async getUserList(req, res) {
        try {
            const films = await this.filmService.getUserList();
            const htmlTemplate = fs.readFileSync(path.join(__dirname, '../views/userList.html'), 'utf-8');
            let filmCards = '';
            films.forEach(film => {
                filmCards += `
                    <div class="card">
                        <img src="${film.imageUrl}" alt="${film.title}">
                        <h2>${film.title}</h2>
                        <p><strong>Műfaj:</strong> ${film.genre}</p>
                        <p><strong>Hossz:</strong> ${film.length} perc</p>
                        <p><strong>Megjelenés:</strong> ${new Date(film.releaseDate).toLocaleDateString()}</p>
                        <p><strong>Streamelés kezdete:</strong> ${new Date(film.streamingDate).toLocaleDateString()}</p>
                        <p><strong>Típus:</strong> ${film.type}</p>
                    </div>
                `;
            });
            const html = htmlTemplate.replace('{{filmCards}}', filmCards);
            res.send(html);
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    }

    async getFilmsTable(req, res) {
        try {
            const films = await this.filmService.getUserList();
            const htmlTemplate = fs.readFileSync(path.join(__dirname, '../views/filmsTable.html'), 'utf-8');
            let filmCards = '';
            films.forEach(film => {
                filmCards += `
                    <div class="card">
                        <img src="${film.imageUrl}" alt="${film.title}">
                        <h2>${film.title}</h2>
                        <p><strong>Műfaj:</strong> ${film.genre}</p>
                        <p><strong>Hossz:</strong> ${film.length} perc</p>
                        <p><strong>Megjelenés:</strong> ${new Date(film.releaseDate).toLocaleDateString()}</p>
                        <p><strong>Streamelés kezdete:</strong> ${new Date(film.streamingDate).toLocaleDateString()}</p>
                        <p><strong>Típus:</strong> ${film.type}</p>
                    </div>
                `;
            });
            const html = htmlTemplate.replace('{{filmCards}}', filmCards);
            res.send(html);
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    }
}

export default FilmController;