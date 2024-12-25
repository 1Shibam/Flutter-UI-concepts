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
    final isPassVisible = ref.watch(passwordVisibilityProvider);

    void submitForm() {
      final isValid = formKey.currentState!.validate();
      if (isValid) {
        final firstValue = firstController.text;
        final secondValue = secondController.text;
        final thirdValue = thirdController.text;
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
      } else {
        print('Error');
      }
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
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First Name Should not be empty';
                      } else {
                        return null;
                      }
                    },
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
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Last Name Should not be empty';
                      } else {
                        return null;
                      }
                    },
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
                    obscureText: isPassVisible,
                    decoration: InputDecoration(
                        suffix: isPassVisible
                            ? IconButton(
                                onPressed: () {
                                  ref
                                      .read(passwordVisibilityProvider.notifier)
                                      .state = false;
                                },
                                icon: const Icon(Icons.visibility_off))
                            : IconButton(
                                onPressed: () {
                                  ref
                                      .read(passwordVisibilityProvider.notifier)
                                      .state = true;
                                },
                                icon: const Icon(Icons.visibility)),
                        border: const OutlineInputBorder(),
                        labelText: 'Password'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Password csn not be empty';
                      } else if (value.toString().length < 8) {
                        return 'Password must be atleast 8 characters';
                      } else {
                        return null;
                      }
                    },
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
