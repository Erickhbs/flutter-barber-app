import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 5,
      color: Colors.grey,
      shadowColor: Colors.black,
        child: SizedBox(
          width: 520,
          height: 300,
          child: Padding(
            padding: EdgeInsets.only(left: 20,top: 30,right: 20, bottom: 20,),
            child: Text('Aqui ficarão os gráficos'),
          ),
        ),
    );
  }
}