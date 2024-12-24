// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ListGridView extends StatefulWidget {
  const ListGridView({super.key});

  @override
  State<ListGridView> createState() => _ListGridViewState();
}

class _ListGridViewState extends State<ListGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List-Grid',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.tealAccent,
        elevation: 0,
        shadowColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 24,
            )),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Card(
              color: Colors.blueGrey.shade200,
              child: const ListTile(
                title: Text('Apple'),
                subtitle: Text('fruit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
