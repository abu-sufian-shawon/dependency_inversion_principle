import 'firebase_repo.dart';
import 'local_db_repo.dart';
import 'user_service.dart';
import '../network_service.dart';

void main() {
    FirebaseUserRepo firebaseUserRepo = FirebaseUserRepo();
    LocalDbRepo localDbRepo = LocalDbRepo();

    NetworkService networkService = NetworkService();

    if(networkService.isConnected()){
      UserService userService = UserService(firebaseUserRepo);
      userService.saveUser();
    } else {
      UserService userService = UserService(localDbRepo);
      userService.saveUser();
    }
}




