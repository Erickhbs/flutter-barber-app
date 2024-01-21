

import 'package:flutter/material.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Tab(
      child: Text("Quadro de avisos", style: TextStyle(color: Colors.white70),),
    );
      
  }
}