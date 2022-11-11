import 'package:flutter/material.dart';

import 'package:provider_architecture/core/provider/provider.dart';
import 'package:provider_architecture/core/viewmodels/change_view_model.dart';

class ChangeNotifierPage extends StatelessWidget {
  const ChangeNotifierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Change notifier page")),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          MyCustomData.mInstance.incrementValue();
        },
      ),
      body: ChangeNotifierProvider<MyCustomData>(
        data: MyCustomData.mInstance,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Builder(builder: (context1) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ChangeNotifierProvider.of<MyCustomData>(context1)
                          ?.currentvalue
                          .toString() ??
                      "Empty Value",
                  style: Theme.of(context).textTheme.headline3,
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
