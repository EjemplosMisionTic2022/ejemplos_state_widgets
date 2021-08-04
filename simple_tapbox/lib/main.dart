import 'package:flutter/material.dart';

import 'external_state_management.dart';
import 'internal_state_management.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'State Handling',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("State Handling"),
            ),
            body: TabBoxes()));
  }
}

class TabBoxes extends StatelessWidget {
  const TabBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [InternalStateManagement(), ExternalStateManagement()],
      ),
    );
  }
}
