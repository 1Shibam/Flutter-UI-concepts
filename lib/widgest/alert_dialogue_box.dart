import 'package:flutter/material.dart';

class AlertDialogueBox extends StatefulWidget {
  const AlertDialogueBox({super.key});

  @override
  State<AlertDialogueBox> createState() => _AlertDialogueBoxState();
}

class _AlertDialogueBoxState extends State<AlertDialogueBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context);
          },
          style:
              ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
          child: const Text(
            'Show alert dialogue',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

Future<void> showAlertDialog(BuildContext context) async {
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('fuck you !!'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [Text('this is demo'), Text('this is shivam')],
            ),
          ),
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          actions: [
            TextButton(onPressed: () {}, child: Text('okay')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('cancel')),
          ],
        );
      });
}
