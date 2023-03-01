import 'package:flutter_test/flutter_test.dart';
import 'package:erics_app/application_state.dart';

void main() {
  test('check the login is set', () {
    final state = ApplicationState();

    state.setLogin("test");

    expect(state.getLogin(), "test");
  });
}
