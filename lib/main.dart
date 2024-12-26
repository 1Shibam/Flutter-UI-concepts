// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_concepts/widgest/alert_dialogue_box.dart';
import 'package:flutter_ui_concepts/widgest/animated_text_widget.dart';
import 'package:flutter_ui_concepts/widgest/bottom_navigation_widget.dart';
import 'package:flutter_ui_concepts/widgest/bottom_sheet.dart';
import 'package:flutter_ui_concepts/widgest/dissmissible.dart';
import 'package:flutter_ui_concepts/widgest/drawer_widget.dart';
import 'package:flutter_ui_concepts/widgest/drop_down_list_widget.dart';
import 'package:flutter_ui_concepts/widgest/forms_widget.dart';
import 'package:flutter_ui_concepts/widgest/image_picker_widget.dart';
import 'package:flutter_ui_concepts/widgest/image_widget.dart';
import 'package:flutter_ui_concepts/widgest/list_grid_view.dart';
import 'package:flutter_ui_concepts/widgest/stack_widget.dart';
import 'package:flutter_ui_concepts/widgest/tab_bar_widger.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ImagePickerWidget(),
    );
  }
}
