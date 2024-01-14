import '../user.dart';
import 'user_repo_abstraction.dart';

class UserService {

  /// UserSevice Class Follows dependency inversion principal
  final UserRepository repository;
  User _user = User();

  // Constructor
  UserService(this.repository);
  
  void saveUser(){
    repository.save(_user);
    
  }
}

