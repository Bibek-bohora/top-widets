import 'package:flutter/material.dart';
//widgets_09
//circleAvtars

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
        title: Text("Circle Avtar"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Color.fromARGB(255, 233, 142, 6),
              backgroundImage: AssetImage("assets/images/h.png"),
              child: Text(
                "helllo",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
