import 'package:flutter/material.dart';

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
        title: Text("checkbox"),
      ),
      body: Column(
        children: [
          Center(
            child: CheckboxListTile(
              value: isChecked,
              title: const Text("Checkbox List tile"),
              activeColor: Colors.orange,
              checkColor: Colors.white,
              tileColor: Colors.purple,
              subtitle: const Text("this is sub title"),
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
              onChanged: (bool? newvalue) {
                setState(() {
                  isChecked = newvalue;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
