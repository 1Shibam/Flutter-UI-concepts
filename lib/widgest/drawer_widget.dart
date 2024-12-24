// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('nooo'),
      ),
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).secondaryHeaderColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: 56,
                            backgroundImage: NetworkImage(
                                'https://media.gettyimages.com/id/85360782/photo/netherlands-photo-of-eminem.jpg?s=612x612&w=0&k=20&c=I0ZSer0ps955DE6cekeBAQNA72ZVIU7URbPLd3XUqgg=')),
                        Text('Eminem')
                      ],
                    ),
                  )),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: const Center(
          child: Text('hey there buddy'),
        ),
      ),
    );
  }
}
