import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final imagePickerProvider = Provider<ImagePicker>((ref) => ImagePicker());
final pickedImageProvider = StateProvider<XFile?>((ref) => null);
final multpileImageProvider = StateProvider<List<XFile>?>((ref) => null);

class ImagePickerWidget extends ConsumerWidget {
  const ImagePickerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final picker = ref.watch(imagePickerProvider);
    final file = ref.watch(pickedImageProvider);
    final multipleFiles = ref.watch(multpileImageProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.grey,
                child: Center(
                  child: file == null
                      ? const Center(child: Text('Image Not Picked'))
                      : Image.file(File(file.path), fit: BoxFit.cover),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (photo != null) {
                    ref.read(pickedImageProvider.notifier).state = photo;
                    print('Got the image Buddy');
                    print("Image Path : ${photo.path}");
                  }
                },
                child: const Text('Choose image')),
            ElevatedButton(
                onPressed: () async {
                  final List<XFile> multiPhotos = await picker.pickMultiImage();
                  if (multiPhotos.isNotEmpty) {
                    ref.read(multpileImageProvider.notifier).state =
                        multiPhotos;
                    print('Got the images Buddy');
                    for (int i = 0; i < multiPhotos.length; i++) {
                      print(multiPhotos[i].path);
                    }
                  }
                },
                child: const Text('Choose image')),

            //null check
            multipleFiles == null || multipleFiles.isEmpty
                ? const Center(child: Text('No images selected'))
                : Expanded(
                    child: GridView.builder(
                      itemCount: multipleFiles.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Container(
                            height: 300,
                            width: 300,
                            color: Colors.grey,
                            child: Center(
                              child: Image.file(
                                File(multipleFiles[index].path),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
            // GridView.builder(
            //   itemCount: multipleFiles!.length,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2),
            //   itemBuilder: (context, index) {
            //     return ClipRRect(
            //       borderRadius: BorderRadius.circular(200),
            //       child: Container(
            //         height: 300,
            //         width: 300,
            //         color: Colors.grey,
            //         child: Center(
            //           child: Image.file(File(multipleFiles[index].path),
            //               fit: BoxFit.cover),
            //         ),
            //       ),
            //     );
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
