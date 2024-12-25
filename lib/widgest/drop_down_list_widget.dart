import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DropDownListWidget extends ConsumerWidget {
  const DropDownListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionTile(
              
              visualDensity: VisualDensity(),
              initiallyExpanded: true,
              title: Text(
                'hello',
              ),
              childrenPadding: EdgeInsets.all(4),
              collapsedBackgroundColor: Colors.transparent,
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('hello'),
                            Text('hello'),
                            Text('hello'),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
