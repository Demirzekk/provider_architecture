import 'package:flutter/material.dart';
import 'package:provider_architecture/core/data/web_service.dart';
import 'package:provider_architecture/core/locator/service_locator.dart';
import 'package:provider_architecture/core/provider/all_provider.dart';
import 'package:provider_architecture/core/views/home_page.dart';

import 'core/provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<ServiceLocator>(
      service: ServiceLocator({
        WebService: () => WebService.mInstance,
        DataService: () => DataService.mInstance,
        AllProvider: () => AllProvider(
            providers: [WebService.mInstance, DataService.mInstance])
      }),
      child: MaterialApp(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          title: "Provider Arch",
          themeMode: ThemeMode.dark,
          home: const MyWidget()),
    );
  }
}
