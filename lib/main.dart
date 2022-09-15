
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/listing_item.dart';
import 'screen/homepage.dart';

void main() {

  runApp(
    ChangeNotifierProvider<GetItems>(
      create: (context)=>GetItems(),
    child:const MyApp()
    )
 );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
