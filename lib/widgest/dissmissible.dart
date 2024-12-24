import 'package:flutter/material.dart';

class DissmissibleWidget extends StatefulWidget {
  const DissmissibleWidget({super.key});

  @override
  State<DissmissibleWidget> createState() => _DissmissibleWidgetState();
}

class _DissmissibleWidgetState extends State<DissmissibleWidget> {
  List<String> niggers = [
    'nigga 1',
    'nigga 2',
    'nigga 3',
    'nigga 4',
    'nigga 5',
    'nigga 6',
    'nigga 7',
    'nigga 8'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dissmisible Widget'),
      ),
      body: ListView.builder(
        itemCount: niggers.length,
        itemBuilder: (context, index) {
          final nigga = niggers[index];
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(niggers[index]),
                  backgroundColor: Colors.red,
                ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(niggers[index]),
                  backgroundColor: Colors.green,
                  duration: const Duration(seconds: 1),
                ));
              }
            },
            key: Key(nigga),
            background: Container(
              color: Colors.red,
            ),
            secondaryBackground: Container(
              color: Colors.green,
            ),
            child: ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              contentPadding: const EdgeInsets.all(8),
              title: Text(niggers[index]),
              subtitle: const Text('black'),
            ),
          );
        },
      ),
    );
  }
}
