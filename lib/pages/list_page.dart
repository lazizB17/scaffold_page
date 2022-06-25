import 'dart:math';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  static const id = "/list_page";
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              color: Colors.primaries[Random().nextInt(10)],
            ),
            Container(
              height: 400,
              color: Colors.primaries[Random().nextInt(10)],
            ),
            Container(
              height: 400,
              color: Colors.primaries[Random().nextInt(10)],
            ),
          ],
        ),
      ),
      */
      body: ListView(
        children: const [
          // Container(
          //   height: 400,
          //   color: Colors.primaries[Random().nextInt(10)],
          // ),
          // Container(
          //   height: 400,
          //   color: Colors.primaries[Random().nextInt(10)],
          // ),
          // Container(
          //   height: 400,
          //   color: Colors.primaries[Random().nextInt(10)],
          // ),

          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text("Title"),
            subtitle: Text("Content"),
            trailing: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}