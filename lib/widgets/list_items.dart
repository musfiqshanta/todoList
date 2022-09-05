import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  String title;
  Items({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
      trailing: Checkbox(
        onChanged: (value) {},
        value: false,
      ),
    );
  }
}
