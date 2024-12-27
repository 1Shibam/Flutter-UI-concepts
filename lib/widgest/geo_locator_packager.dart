import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_concepts/providers.dart/location_provider.dart';

class GeoLocatorPackager extends ConsumerWidget {
  const GeoLocatorPackager({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationAsyncValue = ref.watch(determinePositionProvider);

    return Scaffold(
      body: Center(
        child: Container(
          child: locationAsyncValue.when(
              data: (data) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Location'),
                    Text('Latitude: ${data.latitude}'),
                    Text('Longitude: ${data.longitude}'),
                    Text('Place: ${data.heading}'),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.refresh))
                  ],
                );
              },
              error: (error, stackTrace) {
                return Text(
                    'Error: ${error is LocationException ? error.message : error}');
              },
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  )),
        ),
      ),
    );
  }
}
