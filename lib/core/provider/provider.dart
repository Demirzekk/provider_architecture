import 'package:flutter/cupertino.dart';

class Provider<T> extends InheritedWidget {
  const Provider({Key? key, required Widget child, required this.service})
      : super(key: key, child: child);
  final T service;
  static T? of<T>(BuildContext context){
    return (context.dependOnInheritedWidgetOfExactType<Provider<T>>())?.service;
  }
  @override
  bool updateShouldNotify(covariant Provider oldWidget) {
   return service != oldWidget.service;
}
}