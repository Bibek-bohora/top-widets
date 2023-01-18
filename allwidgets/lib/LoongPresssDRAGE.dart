import 'package:flutter/material.dart';
// LongPressDraggable_widgets_04
//to selects and move the any items with its index while drags any items

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
  Offset _offset = const Offset(100, 150);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          shadowColor: Colors.red,
          backgroundColor: Colors.green,
          elevation: 0.1,
          title: const Text(
            "LongpreddDragebale",
          )),
      body: Center(child: LayoutBuilder(builder: (context, constraints) {
        return Stack(children: [
          Positioned(
              left: _offset.dx,
              top: _offset.dy,
              child: LongPressDraggable(
                  feedback: Icon(
                    Icons.message,
                    size: 200,
                    color: Colors.orange,
                  ),
                  child: Icon(
                    Icons.message,
                    size: 200,
                    color: Color.fromARGB(255, 8, 246, 75),
                  ),
                  onDragEnd: (details) {
                    setState(() {
                      double adjustment = MediaQuery.of(context).size.height -
                          constraints.minHeight;
                      _offset = Offset(
                          details.offset.dx, details.offset.dy - adjustment);
                    });
                  }))
        ]);
      })),
    );
  }
}
