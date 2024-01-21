import 'package:demo/screens/board_screen.dart';
import 'package:demo/screens/schedules_screen.dart';
import 'package:flutter/material.dart';

class StyleAppBar extends StatelessWidget {
  const StyleAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leadingWidth: 200,
      leading: Image.network("https://media-for1-1.cdn.whatsapp.net/v/t61.24694-24/346703910_631158428902483_994226790256464793_n.jpg?ccb=11-4&oh=01_AdS99boH4b4ApOe_7WHlQP7spc1dP4xBBbXiZmo9mvshrg&oe=65BAACBD&_nc_sid=e6ed6c&_nc_cat=110"),
      titleSpacing: 10,
      title: const Text("Ryan Demo", style: TextStyle(color: Colors.white70),),
      bottom:  TabBar(
        tabs: [
          BoardScreen(),
          SchedulesScreen(),
        ],
      ),
    );
  }
}