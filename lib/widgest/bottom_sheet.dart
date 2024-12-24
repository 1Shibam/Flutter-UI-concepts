import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                elevation: 0,
                isDismissible: false,
                showDragHandle: true,
                backgroundColor: Colors.blue,
                sheetAnimationStyle: AnimationStyle(
                    curve: Easing.emphasizedDecelerate,
                    duration: const Duration(milliseconds: 600)),
                enableDrag: true,
                barrierColor: Colors.grey,
                context: context,
                builder: (context) {
                  return const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('niggers'),
                        subtitle: Text('Nigga-1'),
                      ),
                      ListTile(
                        title: Text('niggers'),
                        subtitle: Text('Nigga-2'),
                      ),
                      ListTile(
                        title: Text('niggers'),
                        subtitle: Text('Nigga-3'),
                      ),
                      ListTile(
                        title: Text('niggers'),
                        subtitle: Text('Nigga-4'),
                      ),
                      ListTile(
                        title: Text('niggers'),
                        subtitle: Text('Nigga-5'),
                      ),
                      ListTile(
                        title: Text('niggers'),
                        subtitle: Text('Nigga-6'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Show Bottom Sheet')),
      ),
    );
  }
}
