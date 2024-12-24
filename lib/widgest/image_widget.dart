import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 240,
          height: 300,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 6,
                  blurRadius: 20,
                )
              ],
              color: Colors.red,
              image: const DecorationImage(
                  image: NetworkImage(
                    'https://media.gettyimages.com/id/85360782/photo/netherlands-photo-of-eminem.jpg?s=612x612&w=0&k=20&c=I0ZSer0ps955DE6cekeBAQNA72ZVIU7URbPLd3XUqgg=',
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
