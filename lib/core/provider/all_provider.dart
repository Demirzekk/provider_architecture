import 'package:provider_architecture/core/locator/service_locator.dart';

class AllProvider extends Manager {
  final List<Manager> providers;

  AllProvider(   {required this. providers});

  @override
  void dispose<T>() {
    for (final manager in providers) {
      manager.dispose();
    }
  }
}
