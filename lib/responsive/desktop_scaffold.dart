import 'package:flutter/material.dart';
import 'package:responsive_app/constants.dart';
import 'package:responsive_app/utilis/my_box.dart';
import 'package:responsive_app/utilis/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          //Drawer Like Side Bar at the left
          myDrawer,

          // rest of the body
          Expanded(
            flex: 4,
            child: Column(
              children: [
                // 4 box on the top
                AspectRatio(
                  aspectRatio:
                      4, // to say width = height ( i mean ti bee square l container of the 4 blue containers)
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
            ),
          ),

          // the side bar at the right
          Expanded(
            flex: 1,
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
