import 'package:flutter/foundation.dart';
import 'listitem.dart';
import 'dart:collection';

class GetItems extends ChangeNotifier {
  final List<ListItems> _list = [
    ListItems(title: "buy Milk"),
    ListItems(title: "buy egg"),
    ListItems(title: "buy dim"),
  ];

  List<ListItems> get list {
    return _list;
  }

  void changetext(String newvalue) {
    list.add(ListItems(title: newvalue));
    notifyListeners();
  }

  void checkbox(ListItems listitems) {
    listitems.troggole();
    notifyListeners();
  }

  void removeitems(ListItems removelist) {
    list.remove(removelist);
    notifyListeners();
  }

  get totalitems {
    return list.length;
  }
}
