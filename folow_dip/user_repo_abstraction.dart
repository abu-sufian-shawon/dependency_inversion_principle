import '../user.dart';

abstract class UserRepository {
  void save(User user);
}