import 'package:flutter/material.dart';

class Callback extends StatelessWidget {
  const Callback({Key? key, required this.isChecked, required this.callbackfus})
      : super(key: key);

  final bool isChecked;
  final void Function(bool? a)? callbackfus;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Buy Milk",
        style: TextStyle(
            fontSize: 18,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        onChanged: callbackfus,
        value: isChecked,
      ),
    );
  }
}
