import 'package:flutter_2/domain/models/user.dart';

class UserRepository {

  static final List<User> _users = [
    User(name: 'Котик', login: '1', password: '1')
  ];

  List<User> getUsers(){
    return _users;
  }

  User? isAuth(User user){
    for(var tmpUser in _users){
      if(tmpUser.login == user.login && tmpUser.password == user.password){
        return tmpUser;
      }
    }
    return null;
  }

  void addUser(User user){
    _users.add(user);
  }


}