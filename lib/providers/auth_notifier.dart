import 'package:drift/drift.dart';
import 'package:flutter_2/data/repository/user_repository.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_2/domain/models/user.dart';
import 'package:flutter_2/ui/screens/products_screen.dart';
import 'package:flutter_2/utils/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends AsyncNotifier<User?>{

  late final UserRepository _userRepository;
  

  @override
  Future<User>? build() {
    _userRepository = UserRepository(db);
    return null;
  }

  void auth(User user)async{
    state = AsyncLoading();
    await Future.delayed(Duration(seconds: 2));
    var isAuth = await _userRepository.isAuth(user);
    state = AsyncData(isAuth);
  }


  void addUser(User user){
    _userRepository.addUser(user);
  }
}



var authProvider = AsyncNotifierProvider<AuthNotifier, User?>(AuthNotifier.new);
