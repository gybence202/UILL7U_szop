import express from 'express';
import FilmController from '../controllers/filmController.js';
import filmService from '../services/filmService.js';

const router = express.Router();
const filmController = new FilmController(filmService);

// Get all films
router.get('/', filmController.getFilmsTable.bind(filmController));
// Get film by ID
router.get('/:id', filmController.getFilm.bind(filmController));
// Create new film
router.post('/', filmController.createFilm.bind(filmController));
// Update film by ID
router.put('/:id', filmController.updateFilm.bind(filmController));
// Delete film by ID
router.delete('/:id', filmController.deleteFilm.bind(filmController));

export default router;