import 'package:flutter/material.dart';
// Positioned_widgets

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WidgetsLongPress(),
  ));
}

class WidgetsLongPress extends StatefulWidget {
  const WidgetsLongPress({super.key});

  @override
  State<WidgetsLongPress> createState() => _WidgetsLongPressState();
}

class _WidgetsLongPressState extends State<WidgetsLongPress> {
  Offset _offset = const Offset(200, 250);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          shadowColor: Colors.red,
          backgroundColor: Colors.green,
          elevation: 0.1,
          title: Text(
            "LongpreddDragebale",
          )),
      body: Center(child: LayoutBuilder(builder: (context, constraints) {
        return Stack(alignment: AlignmentDirectional.center, children: [
          Positioned(
              top: 10,
              child: Icon(Icons.message,
                  size: 128.0, color: Colors.greenAccent[400])),
          Positioned(
            top: 0,
            right: 225,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              child: Text('24'),
            ),
          ),
        ]);
      })),
    );
  }
}
