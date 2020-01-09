import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  int counter = 0;

  @action
  increment() {
    counter++;
  }

  @action
  decrement() {
    counter--;
  }
}
