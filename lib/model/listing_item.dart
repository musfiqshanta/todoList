import 'package:flutter/foundation.dart';
import 'listitem.dart';
import 'dart:collection';

class GetItems extends ChangeNotifier {

  final List<ListItems> _list = [
    ListItems(title: "buy Milk"),
    ListItems(title: "buy egg"),
    ListItems(title: "buy egg"),
  ];

  UnmodifiableListView<ListItems> get list {
    return UnmodifiableListView(_list);
  }

  void changetext(String newvalue) {
    _list.add(ListItems(title: newvalue));
    notifyListeners();
  }

  void checkbox(ListItems listitems) {

    listitems.troggole();
  }

  get totalitems {
    return _list.length;
  }
}
