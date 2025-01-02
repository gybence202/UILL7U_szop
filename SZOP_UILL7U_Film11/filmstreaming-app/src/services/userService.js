import User from '../models/userModel.js';

class UserService {
  // Authenticate user by username and password
  async authenticate(username, password) {
    const user = await User.findOne({ where: { username, password } });
    return user;
  }
}

export default new UserService();