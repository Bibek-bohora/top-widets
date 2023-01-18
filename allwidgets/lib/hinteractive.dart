// InteractiveViewer_05

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 93, 93, 93),
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({super.key});

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  final List<int> items = List<int>.generate(30, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20.0),
          minScale: 0.1,
          maxScale: 1.6,
          child: Scaffold(
            backgroundColor: Colors.green,
            appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 239, 13, 66),
                title: Text("Interactive viwer")),
            body: Column(children: [
              Image.network(
                  "https://www.facebook.com/stories/1559835700713940/UzpfSVNDOjE3ODY2MTk2NDE3MDI2OTU=/?view_single=true&__tn__=%3C%2Cd")
            ]),
          )),
    );
  }
}
