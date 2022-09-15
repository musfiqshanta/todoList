import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/screen/body.dart';
import '../model/listing_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String createTask;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Body(),
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
                        createTask = value;
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
                          Provider.of<GetItems>(context, listen: false)
                              .changetext(createTask);

                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
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
