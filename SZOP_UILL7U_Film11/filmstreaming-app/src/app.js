import express from 'express';
import { connectDB, sequelize } from './config/database.js';
import filmRoutes from './routes/filmRoutes.js';
import userRoutes from './routes/userRoutes.js';
import path from 'path';
import { fileURLToPath } from 'url';
import session from 'express-session';
import FilmController from './controllers/filmController.js';
import filmService from './services/filmService.js';

const app = express();
const filmController = new FilmController(filmService);

// Convert import.meta.url to __dirname
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Connect DB
connectDB();

// DB Sync
sequelize.sync({ force: false }).then(() => {
  console.log('Database & tables created!');
});

// Serve static files from the "style" directory
app.use('/style', express.static(path.join(__dirname, 'style')));

app.use(express.json({ extended: false }));

// Session middleware
app.use(session({
  secret: 'e3c15b8d8e746163a8b292fc7487a15d',
  resave: false,
  saveUninitialized: false, // Change to false to avoid creating sessions for unauthenticated users
}));

// Authentication middleware
function isAuthenticated(req, res, next) {
  console.log('Session:', req.session); // Debugging line
  if (req.session.user) {
    return next();
  } else {
    res.send('<a href="http://localhost:3000/" style="text-decoration: none; color: black;"><h1>Jelentkezzen be!</h1></a>'); // Display message if not authenticated
  }
}

// Serve the login page
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'views/index.html'));
});

// Router
app.use('/login', userRoutes); // Add user routes
app.use('/sajatlista', isAuthenticated, filmRoutes);

// Logout route
app.post('/logout', (req, res) => {
  req.session.destroy(err => {
    if (err) {
      return res.status(500).send('Nem sikerült kijelentkezni!');
    }
    res.status(200).send('Kijelentkezés sikeres');
  });
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => console.log(`Server started on port ${PORT}`));