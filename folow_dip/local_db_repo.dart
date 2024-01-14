import '../user.dart';
import 'user_repo_abstraction.dart';

class LocalDbRepo implements UserRepository {
  
  @override
  void save(User user) {
    user.profilePic = saveIntoStorage();
    print("User saving in Local Database...");
    print("Name: ${user.name}");
    print("Password: ${user.password}");
    print("Is Sync: ${user.isSync}");
    print("Profile Picture:${user.profilePic}");
    print("User saved in Local Database");
  }
  
   String saveIntoStorage(){
    return "local_path/pofile_pic/profile.jpg";
  }
}