import User from '../models/userModel.js';

class UserService {
  async authenticate(username, password) {
    const user = await User.findOne({ where: { username, password } });
    return user;
  }
}

export default new UserService();