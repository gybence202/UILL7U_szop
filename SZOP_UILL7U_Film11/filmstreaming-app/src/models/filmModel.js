import { DataTypes } from 'sequelize';
import { sequelize } from '../config/database.js';

// Film Model
const Film = sequelize.define('Film', {
  // Primary key
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  // Title
  title: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  // Genre
  genre: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  // Length 
  length: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  // Release Date
  releaseDate: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  // Streaming date
  streamingDate: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  // Type (Film or Series)
  type: {
    type: DataTypes.ENUM('Film', 'Sorozat'),
    allowNull: false,
  },
  // URL
  imageUrl: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

export default Film;