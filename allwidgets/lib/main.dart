import 'package:flutter/material.dart';
//widgets_11
//Table

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
        title: Text("Table"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("Table in flluter"),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Table(
                border:
                    TableBorder.all(color: Color.fromARGB(255, 11, 23, 239)),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  //row fro heading
                  TableRow(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromARGB(255, 75, 240, 15)),
                      children: <Widget>[
                        TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("title 1"),
                            )),
                        TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("title 2"),
                            )),
                        TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text("title 3"),
                            )),
                      ]),
                  //tablerow fro content
                  ...List.generate(
                      50,
                      (index) => const TableRow(children: [
                            TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("index + celll"),
                                )),
                            TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("celll 2"),
                                )),
                            TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("celll 3"),
                                )),
                          ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
