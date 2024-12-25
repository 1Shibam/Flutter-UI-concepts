import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_concepts/providers.dart/providers.dart';

class FormsWidget extends ConsumerWidget {
  FormsWidget({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstFocusNode = ref.watch(firstFocusNodeProvider);
    final secondFocusNode = ref.watch(secondFocusNodeProvider);
    final thirdFocusNode = ref.watch(thirdFocusNodeProvider);
    final firstController = ref.watch(firstTextControllerProvider);
    final secondController = ref.watch(secondTextControllerProvider);
    final thirdController = ref.watch(thirdTextControllerProvider);

    void submitForm() {
      final firstValue = firstController.text;
      final secondValue = secondController.text;
      final thirdValue = secondController.text;

      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Form Submitted'),
          content: Text(
              'First Field: $firstValue\nSecond Field: $secondValue\nThird Field: $thirdValue'),
        ),
      );
      firstController.clear();
      secondController.clear();
      thirdController.clear();
    }

    return Scaffold(
      body: Center(
        child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: firstController,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    focusNode: firstFocusNode,
                    onFieldSubmitted: (_) =>
                        FocusScope.of(context).requestFocus(secondFocusNode),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'name'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: secondController,
                    textInputAction: TextInputAction.next,
                    focusNode: secondFocusNode,
                    onFieldSubmitted: (_) =>
                        FocusScope.of(context).requestFocus(thirdFocusNode),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: thirdController,
                    keyboardType: TextInputType.datetime,
                    textInputAction: TextInputAction.next,
                    focusNode: thirdFocusNode,
                    onFieldSubmitted: (_) {
                      submitForm();
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Date of birth'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        submitForm();
                      },
                      child: const Text('Submit'))
                ],
              ),
            )),
      ),
    );
  }
}
