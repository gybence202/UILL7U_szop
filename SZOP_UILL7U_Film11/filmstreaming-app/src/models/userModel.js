import { DataTypes } from 'sequelize';
import { sequelize } from '../config/database.js';

// User Model
const User = sequelize.define('User', {
  // Primary key
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  // Username
  username: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  // Password
  password: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

export default User;