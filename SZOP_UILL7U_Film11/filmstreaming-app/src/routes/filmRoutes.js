import express from 'express';
import FilmController from '../controllers/filmController.js';
import filmService from '../services/filmService.js';

const router = express.Router();
const filmController = new FilmController(filmService);

router.get('/', filmController.getFilmsTable.bind(filmController));
router.get('/:id', filmController.getFilm.bind(filmController));
router.post('/', filmController.createFilm.bind(filmController));
router.put('/:id', filmController.updateFilm.bind(filmController));
router.delete('/:id', filmController.deleteFilm.bind(filmController));

export default router;