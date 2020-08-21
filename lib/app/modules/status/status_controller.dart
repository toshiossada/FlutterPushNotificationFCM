import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'status_controller.g.dart';

@Injectable()
class StatusController = _StatusControllerBase with _$StatusController;

abstract class _StatusControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
