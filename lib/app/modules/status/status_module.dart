import 'status_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'status_page.dart';

class StatusModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $StatusController,
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => StatusPage(
                  title: args.data,
                )),
      ];

  static Inject get to => Inject<StatusModule>.of();
}
