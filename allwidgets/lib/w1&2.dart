//widgets

//Material Banner_01
//showModalBottomSheet_03

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MaterialNBannerWigets(),
  ));
}

class MaterialNBannerWigets extends StatefulWidget {
  const MaterialNBannerWigets({super.key});

  @override
  State<MaterialNBannerWigets> createState() => _MaterialNBannerWigetsState();
}

class _MaterialNBannerWigetsState extends State<MaterialNBannerWigets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Material Banner"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
                  content: Text("suscribe added"),
                  padding: EdgeInsets.all(8.0),
                  leading: Icon(Icons.notification_add),
                  backgroundColor: Colors.yellow,
                  elevation: 2.0,
                  actions: [
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "close",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ));
              },
              child: Text("open"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                          color: Color.fromARGB(255, 17, 145, 213),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              colors: [
                                Colors.pink,
                                Colors.purple,
                              ])),
                      height: 300,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("close"),
                        ),
                      ),
                    );
                  });
            },
            child: Text("show models"),
          )
        ],
      ),
    );
  }
}
