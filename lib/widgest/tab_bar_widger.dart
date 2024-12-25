import 'package:flutter/material.dart';

class TabBarWidger extends StatelessWidget {
  const TabBarWidger({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('VibeTunes'),
            bottom:
                const TabBar(automaticIndicatorColorAdjustment: true,

                
                
                
                 tabs: [
              Tab(
                icon: Icon(Icons.music_note),
                text: 'Songs',
              ),
              Tab(
                icon: Icon(Icons.featured_play_list),
                text: 'Playlists',
              ),
            ]),
          ),
          body: TabBarView(children: [
            Container(
              child: Center(
                child: Text('Songs will be here!!'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Playlists will be here!!'),
              ),
            )
          ]),
        ));
  }
}
