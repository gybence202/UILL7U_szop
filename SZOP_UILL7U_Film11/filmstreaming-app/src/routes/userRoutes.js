import express from 'express';
import UserService from '../services/userService.js';

const router = express.Router();

router.post('/', async (req, res) => {
  const { username, password } = req.body;
  const user = await UserService.authenticate(username, password);
  if (user) {
    req.session.user = user;
    res.status(200).send('Login successful');
  } else {
    res.status(401).send('Invalid username or password');
  }
});

export default router;
