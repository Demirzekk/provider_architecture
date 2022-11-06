import 'package:flutter/material.dart';
import 'package:provider_architecture/core/data/web_service.dart';
import 'package:provider_architecture/core/extension/log_extension.dart';
import 'package:provider_architecture/core/extension/provider_extension.dart';

import 'package:provider_architecture/core/provider/all_provider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text("Provider Architecture")),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  context.fetch<WebService>()?.log();
                  context.fetch<DataService>()?.log();
                  // final result = Provider.of<ServiceLocator>(context)
                  //     ?.fetch<DataService>()
                  //     .hello;

                  // result!.log();

                  // final result2=      context.fetch<WebService>()?.hello;
                  // result2!.log();
                },
                child: const Text("To Run Fetch Void Click me!")),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  context.fetch<AllProvider>()?.dispose();
                },
                child: const Text("To Dispose All Instance Click Me!")),
          ],
        ),
      ),
    );
  }
}
