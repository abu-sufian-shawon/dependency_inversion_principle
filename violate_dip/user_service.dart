import '../user.dart';
import 'firebase_repo.dart';
import 'local_db_repo.dart';

class UserService {

  /// Violate dependency Inversion Principle
  final FirebaseUserRepo firebaseRepo;
  final LocalDbRepo localDbRepo;
  User _user = User();
  NetworkService _networkService = NetworkService();

  // Constructor
  UserService(this.firebaseRepo, this.localDbRepo);
  
  void saveUser(){
    if(_networkService.isConnected()){
      firebaseRepo.save(_user);
    } else {
      localDbRepo.save(_user);
    }
    
  }
}

class NetworkService {

  bool isConnected(){
    return false;
  }
}