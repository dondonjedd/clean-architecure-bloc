import 'package:tdd_tutorial/core/usecase/usecase.dart';
import 'package:tdd_tutorial/core/utils/typedef.dart';
import 'package:tdd_tutorial/src/authentication/domain/entities/user.dart';
import 'package:tdd_tutorial/src/authentication/domain/repositories/authentication_repository.dart';

class GetUsers extends UseCaseWithoutParams<List<User>> {
  GetUsers(this._repository);
  final AuthenticationRepository _repository;

  @override
  ResulFuture<List<User>> call() {
    return _repository.getUsers();
  }
}
