import 'package:flutter_modular/flutter_modular.dart';

import 'interfaces/push_strategy_interface.dart';

class UpdateAppointmentStrategy implements IPushStrategy {
  @override
  void execute(Map<String, dynamic> payload) {
    Modular.to.pushNamed('/status', arguments: payload['status']);
  }
}
