import '../user.dart';
import 'user_repo_abstraction.dart';

class FirebaseUserRepo implements UserRepository {

  @override
  void save(User user) {
    user.profilePic = uploadProfilePic();
    print("User saving in firbase...");
    print("Name: ${user.name}");
    print("Password: ${user.password}");
    print("Profile Pircture : ${user.profilePic}");
    print("User saved in firebase");
  }
  
  String uploadProfilePic(){
    return "firebase_path/pofile_pic/profile.jpg";
  }
}