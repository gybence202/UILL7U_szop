import express from 'express';
import { connectDB, sequelize } from './config/database.js';
import filmRoutes from './routes/filmRoutes.js';
import path from 'path';
import { fileURLToPath } from 'url';

const app = express();

// Convert import.meta.url to __dirname
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Connect Database
connectDB();

// Sync Database
sequelize.sync({ force: false }).then(() => {
  console.log('Database & tables created!');
});

// Serve static files from the "public" directory
app.use(express.static(path.join(__dirname, 'public')));

app.use(express.json({ extended: false }));

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'views', 'index.html'));
});

// Define Routes
app.use('/sajatlista', filmRoutes);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => console.log(`Server started on port ${PORT}`));