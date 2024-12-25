import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.deepPurple],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.yellow,
                height: 100,
                width: 30,
              ),
              Container(
                color: Colors.green,
                height: 30,
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
