import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final setIndexProvider = StateProvider<int>((ref) => 2);
final pageControllerProvider =
    Provider<PageController>((ref) => PageController());

class BottomNavigationWidget extends ConsumerWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currIndex = ref.watch(setIndexProvider);
    final pageController = ref.watch(pageControllerProvider);

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
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: currIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (newIndex) {
          ref.read(setIndexProvider.notifier).state = newIndex;
          pageController.jumpToPage(newIndex);
        },
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (newIndex) {
          ref.read(setIndexProvider.notifier).state = newIndex;
        },
        children: const [
          Center(child: Text('Person Page')),
          Center(child: Text('Photo Page')),
          Center(child: Text('Direction Page')),
          Center(child: Text('Search Page')),
          Center(child: Text('Settings Page')),
        ],
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
