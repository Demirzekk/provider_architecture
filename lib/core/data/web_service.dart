import 'package:provider_architecture/core/extension/log_extension.dart';

import '../locator/service_locator.dart';

class WebService extends Manager {
  static final WebService _instance = WebService._sharedInstance();
  static WebService get mInstance => _instance;
  WebService._sharedInstance();
  @override
  String toString() {
    return "WebService Object Hashcode: $hashCode";
  }

  @override
  void dispose<T>() {
    "Web Service Dispose $hashCode".log();
  }

  String get hello => "I'am from Web Service";
}

class DataService extends Manager {
  static final DataService _instance = DataService._sharedInstance();
  static DataService get mInstance => _instance;
  DataService._sharedInstance();
  @override
  String toString() {
    return "Data Service Object Hashcode: $hashCode";
  }

  @override
  void dispose<T>() {
 
    "Data Service Dispose $hashCode".log();
  }

  String get hello => "I'am from Data Service";
}
