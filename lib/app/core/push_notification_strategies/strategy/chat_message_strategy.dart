import 'package:flutter_modular/flutter_modular.dart';

import 'interfaces/push_strategy_interface.dart';

class ChatMessageStrategy implements IPushStrategy {
  @override
  void execute(Map<String, dynamic> payload) {
    Modular.to.pushNamed('/chat', arguments: payload['message']);
  }
}
