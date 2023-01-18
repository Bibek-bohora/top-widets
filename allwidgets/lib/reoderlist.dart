import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 102, 158, 204),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.1,
          backgroundColor: Colors.green,
          title: Text("ReorderListView"),
        ),
        body: Myapp(),
      )));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  final List<int> items = List<int>.generate(12, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
        children: List.generate(
            items.length,
            (index) => ListTile(
                  key: Key('$index'),
                  title: Text(
                    'Bibek ${items[index]}',
                    style: TextStyle(
                        color: items[index].isEven
                            ? Color.fromARGB(255, 26, 25, 26)
                            : Color.fromARGB(255, 242, 244, 246)),
                  ),
                  tileColor: items[index].isOdd
                      ? Color.fromARGB(255, 64, 65, 65)
                      : Color.fromARGB(255, 240, 241, 242),
                  trailing: Icon(
                    Icons.light_mode,
                    color: Colors.red,
                  ),
                )),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        });
  }
}
