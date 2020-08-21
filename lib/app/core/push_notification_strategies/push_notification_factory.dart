import 'package:push_notification/app/core/push_notification_strategies/strategy/update_appointment_strategy.dart';

import 'strategy/chat_message_strategy.dart';
import 'strategy/interfaces/push_strategy_interface.dart';

class PushNotificationFactory {
  IPushStrategy strategy;
  Map<String, dynamic> pushPayload;
  PushNotificationFactory.create(this.pushPayload) {
    switch (pushPayload['type']) {
      case 'updateAppointment':
        strategy = UpdateAppointmentStrategy();
        break;
      case 'chatMessage':
        strategy = ChatMessageStrategy();
        break;
      default:
        throw Exception('Estratégia não implementada');
    }
  }

  void execute() {
    strategy.execute(pushPayload);
  }
}
