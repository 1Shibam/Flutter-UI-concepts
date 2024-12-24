import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final setIndexProvider = StateProvider<int>((ref) => 0);

class BottomNavigationWidget extends ConsumerWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(setIndexProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), label: 'photo'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_bike), label: 'direction'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: 'search'),
        ],
        currentIndex: index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (newIndex) {
          ref.read(setIndexProvider.notifier).state = newIndex;
        },
      ),
      body: const Center(
        child: Text('niggers'),
      ),
    );
  }
}

// class BottomNavigationWidget extends StatefulWidget {
//   const BottomNavigationWidget({super.key});

//   @override
//   State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
// }

// class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
//   int selectedIndex = 0;

//   List<Widget> widgets = const [
//     Text('Person'),
//     Text('Photo'),
//     Text('Direction'),
//     Text('Search'),
//   ];
//   void onItemTap(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.add_a_photo), label: 'photo'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.directions_bike), label: 'direction'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.search_rounded), label: 'search'),
//         ],
//         currentIndex: selectedIndex,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         onTap: onItemTap,
//       ),
//       body: const Center(
//         child: Text('niggers'),
//       ),
//     );
//   }
// }
