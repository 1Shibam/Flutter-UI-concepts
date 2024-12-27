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
import 'package:flutter_ui_concepts/widgest/geo_locator_packager.dart';
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
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const GeoLocatorPackager(),
    );
  }
}
