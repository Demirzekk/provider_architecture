import 'package:flutter/material.dart';

class Provider<T> extends InheritedWidget {
  const Provider({Key? key, required Widget child, required this.service})
      : super(key: key, child: child);
  final T service;
  static T? of<T>(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider<T>>())?.service;
  }

  @override
  bool updateShouldNotify(covariant Provider oldWidget) {
    return service != oldWidget.service;
  }
}

class ChangeNotifierProvider<T extends Listenable> extends InheritedNotifier {
  const ChangeNotifierProvider(
      {Key? key, required Widget child, required this.data})
      : super(key: key, child: child, notifier: data);
  final T data;

  static T? of<T extends Listenable>(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType<ChangeNotifierProvider<T>>())
          ?.data;
}
