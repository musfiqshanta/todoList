import 'package:flutter/material.dart';

import '../model/listitem.dart';
import '../widgets/list_items.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //bool isChecked = false;
  late ListItems listitem;
  late String addItems;
  List<ListItems> list = [
    ListItems(title: "buy Milk"),
  ];
  @override
  Widget build(BuildContext context) {
    // void callbackfu(bool value) {
    //   setState(() {
    //     isChecked = value;
    //   });
    // }

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 50, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      size: 40.0,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "To DO List",
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "${list.length} Task",
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Callback(
                          title: list[index].title,
                          isChecked: list[index].isChecked,
                          callbackf: (bool? a) {
                            setState(() {
                              list[index].troggole();
                            });
                          },
                        );
                      })),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            context: context,
            builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Add Task",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      onChanged: (String value) {
                        addItems = value;
                      },
                      autofocus: true,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          disabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlue, width: 2))),
                    ),
                    const SizedBox(height: 10),
                    Material(
                      color: Colors.lightBlue,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            list.add(
                              ListItems(title: addItems),
                            );
                          });
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
