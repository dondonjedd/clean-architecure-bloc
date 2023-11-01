import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_tutorial/src/authentication/data/models/user_model.dart';
import 'package:tdd_tutorial/src/authentication/domain/entities/user.dart';

void main() {
  test('should be a subclass of [user] entity', () {
    const tModel = Usermodel.empty();

    expect(tModel, isA<User>());
  });
}
