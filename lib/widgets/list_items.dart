import 'package:flutter/material.dart';
import 'package:todo/model/listitem.dart';

class Callback extends StatelessWidget {
  Callback(
      {Key? key,
      required this.title,
      required this.isChecked,
      required this.callbackf})
      : super(key: key);

  final String title;
  final bool isChecked;

  //final void Function(bool? a)? callbackfus;
final void Function(bool? a)? callbackf;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontSize: 18,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        onChanged: callbackf,
        value: isChecked,
      ),
    );
  }
}
