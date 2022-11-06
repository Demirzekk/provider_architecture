import 'package:flutter/cupertino.dart';
import 'package:provider_architecture/core/locator/service_locator.dart';

import '../provider/provider.dart';

extension ProviderX<T extends ServiceLocator> on BuildContext {
 R? fetch<R extends Manager>()=> Provider.of<T>(this)?.fetch<R>();
}