import 'package:flutter/material.dart';
import 'package:responsive_app/constants.dart';
import 'package:responsive_app/utilis/my_box.dart';
import 'package:responsive_app/utilis/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBackground,
        drawer: myDrawer,
        body: Column(
          children: [
            // 4 box on the top
            AspectRatio(
              aspectRatio:
                  4, // to say width = height ( i mean ti bee square l container of the 4 blue containers)
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return const MyBox();
                  },
                ),
              ),
            ),

            // tiles below it
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const MyTile();
                },
              ),
            )
          ],
        ));
  }
}
