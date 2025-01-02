import express from 'express';
import UserService from '../services/userService.js';

const router = express.Router();

// User login route
router.post('/', async (req, res) => {
  const { username, password } = req.body;
  const user = await UserService.authenticate(username, password);
  if (user) {
    req.session.user = user; //Set the session user
    console.log('User authenticated:', user); //Debug
    res.status(200).send('Login successful');
  } else {
    console.log('Invalid username or password'); //Debug
    res.status(401).send('Invalid username or password');
  }
});

export default router;
