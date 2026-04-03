import 'package:flutter_2/data/repository/user_repository.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_2/domain/models/user.dart';
import 'package:flutter_2/ui/screens/products_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends Notifier<User?>{

  late final UserRepository _userRepository;
  

  @override
  User? build() {
    _userRepository = UserRepository();
    return null;
  }

  void auth(User user){
    state = _userRepository.isAuth(user);
  }


  void addUser(User user){
    _userRepository.addUser(user);
  }
}



var authProvider = NotifierProvider<AuthNotifier, User?>(AuthNotifier.new);
