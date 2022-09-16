import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/listing_item.dart';

import '../model/listitem.dart';

class Callback extends StatelessWidget {
  Callback(
      {Key? key,
      required this.title,
      required this.isChecked,
      required this.callbackf,
      required this.onLongPress})
      : super(key: key);

  final String title;
  final bool isChecked;
void Function()? onLongPress;

  //final void Function(bool? a)? callbackfus;
  final void Function(bool? a)? callbackf;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
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
