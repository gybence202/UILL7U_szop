// filepath: /c:/Users/gyorf/Desktop/EKKE/SZOP_UILL7U_Film11/filmstreaming-app/src/routes/filmRoutes.js
import express from 'express';
import FilmController from '../controllers/filmController.js';
import filmService from '../services/filmService.js';

const router = express.Router();
const filmController = new FilmController(filmService);

router.get('/', filmController.getUserList.bind(filmController));
router.get('/:id', filmController.getFilm.bind(filmController));
router.post('/', filmController.createFilm.bind(filmController));
router.put('/:id', filmController.updateFilm.bind(filmController));
router.delete('/:id', filmController.deleteFilm.bind(filmController));
router.get('/table', filmController.getFilmsTable.bind(filmController));

export default router;