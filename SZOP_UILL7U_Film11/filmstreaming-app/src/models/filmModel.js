// filepath: /c:/Users/gyorf/Desktop/EKKE/SZOP_UILL7U_Film11/filmstreaming-app/src/models/filmModel.js
import { DataTypes } from 'sequelize';
import { sequelize } from '../config/database.js';

const Film = sequelize.define('Film', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  title: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  genre: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  length: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  releaseDate: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  streamingDate: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  type: {
    type: DataTypes.ENUM('film', 'series'),
    allowNull: false,
  },
  imageUrl: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

export default Film;