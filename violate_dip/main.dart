
import 'firebase_repo.dart';
import 'local_db_repo.dart';
import 'user_service.dart';

void main() {
    FirebaseUserRepo firebaseRepo = FirebaseUserRepo();
    LocalDbRepo localRepo = LocalDbRepo();
    UserService userService = UserService(firebaseRepo, localRepo);
    userService.saveUser();
}




