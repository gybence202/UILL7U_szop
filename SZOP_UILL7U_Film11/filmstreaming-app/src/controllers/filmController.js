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
                return res.status(404).json({ message: 'Film nem található' });
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
                return res.status(404).json({ message: 'Film nem található' });
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
                return res.status(404).json({ message: 'Film nem található' });
            }
            res.status(204).send();
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
                const releaseDate = new Date(film.releaseDate).toLocaleDateString();
                const streamingDate = new Date(film.streamingDate).toLocaleDateString();
                filmCards += `
                    <div class="card" id="film-${film.id}">
                        <button class="edit-btn" onclick="editFilm(${film.id})">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
                            <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.5.5 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11z"/>
                        </svg>
                        </button>
                        <button class="delete-btn" onclick="deleteFilm(${film.id})">x</button>
                        
                        <img src="${film.imageUrl}" alt="${film.title}">
                        <h2 class="text" style="margin-top: 10px">${film.title}</h2>
                        <input type="text" class="editable" name="title" value="${film.title}" style="display: none;">
                        
                        <p class="text"><strong>Műfaj:</strong> ${film.genre}</p>
                        <input type="text" class="editable" name="genre" value="${film.genre}" style="display: none;">
                        
                        <p class="text"><strong>${film.type === 'film' ? 'Hossz' : 'Évad'}:</strong> ${film.type === 'film' ? film.length + ' perc' : film.length + ' évad'}</p>
                        <input type="${film.type === 'film' ? 'number' : 'text'}" class="editable" name="length" value="${film.length}" style="display: none;">
                        
                        <p class="text"><strong>Megjelenés:</strong> ${releaseDate}</p>
                        <input type="date" class="editable" name="releaseDate" value="${new Date(film.releaseDate).toISOString().split('T')[0]}" style="display: none;">
                        
                        <p class="text"><strong>Streamelés kezdete:</strong> ${streamingDate}</p>
                        <input type="date" class="editable" name="streamingDate" value="${new Date(film.streamingDate).toISOString().split('T')[0]}" style="display: none;">
                        
                        <p class="text"><strong>Típus:</strong> ${film.type === 'film' ? 'Film' : 'Sorozat'}</p>
                        <input type="text" class="editable" name="type" value="${film.type === 'film' ? 'Film' : 'Sorozat'}" style="display: none;">
                        
                        <input type="text" class="editable" name="imageUrl" value="${film.imageUrl}" style="display: none;">
                       
                        <button class="save-btn" onclick="saveFilm(${film.id})">Mentés</button>
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