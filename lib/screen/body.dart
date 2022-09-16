import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/listing_item.dart';
import '../widgets/list_items.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                "${Provider.of<GetItems>(context).totalitems} Task",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
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
                  itemCount: Provider.of<GetItems>(context).totalitems,
                  itemBuilder: (context, index) {
                    return Consumer<GetItems>(
                      builder: (context, getItems, child) {
                        return Callback(
                          onLongPress: () {
                            getItems.removeitems(getItems.list[index]);
                          },
                          title: getItems.list[index].title,
                          isChecked: getItems.list[index].isChecked,
                          callbackf: (bool? a) {
                            getItems.checkbox(getItems.list[index]);
                          },
                        );
                      },
                    );
                  })),
        )
      ],
    );
  }
}
