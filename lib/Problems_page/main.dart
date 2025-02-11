import 'package:flutter/material.dart';
import 'HeaderComponent.dart';
import 'TitleComponent_StatusComponent.dart';
import 'ButtonComponent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      child: Column(
        children: [
          HeaderComponent(),
          Expanded(
            flex: 5,
            child: TitleComponent_StatusComponent(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: ButtonComponent(),
          ),
        ],
      ),
    );
  }
}
