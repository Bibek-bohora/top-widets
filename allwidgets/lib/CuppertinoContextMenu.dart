import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//widgets_10
//circleAvtars
//neeed widgets
//SizedBox
//CuppertinoContextActionMenu

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CheckedBoox(),
  ));
}

class CheckedBoox extends StatefulWidget {
  const CheckedBoox({super.key});

  @override
  State<CheckedBoox> createState() => _CheckedBooxState();
}

class _CheckedBooxState extends State<CheckedBoox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuppertion context menu"),
        centerTitle: true,
      ),
      body: Container(
        width: 500,
        height: 500,
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: CupertinoContextMenu(
                  child: Icon(
                    Icons.menu,
                    size: 100,
                  ),
                  actions: <Widget>[
                    CupertinoContextMenuAction(
                      child: const Text("Actions one"),
                      onPressed: () {
                        Navigator.pop(context);
                        debugPrint("hello1");
                      },
                    ),
                    CupertinoContextMenuAction(
                      child: const Text("Actions Two"),
                      onPressed: () {
                        Navigator.pop(context);
                        debugPrint("hello2");
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
