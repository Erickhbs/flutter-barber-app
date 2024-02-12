import 'package:demo/widgets/agendamento_widget.dart';
import 'package:demo/widgets/avisos_widget.dart';
import 'package:demo/widgets/info_widget.dart';
import 'package:demo/widgets/programador_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  static const List<Widget> _pages = <Widget>[
    AvisosPage(),
    AgendamentoPage(),
    InfoPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(
        //imagem de autoria da barbearia Ryan Fagner em parnamirim
        title: Image.asset(
          'assets/RF.png',
          width: 100,
          height: 100,
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white, 
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: [_pages.elementAt(_index)],
        ),
      ),  
      drawer: Drawer(
        width: 300,
        backgroundColor: Colors.grey.shade600,
        child: Center(
          child: Container(
            child: TextButton(
              child: Text('Desenvolvedor', style: TextStyle(color: Colors.white),),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardDev(),
                  ),
                ),
              }
            ),
          ),
        ),
      ),

      //google_navigation_bar
      bottomNavigationBar: Container(

        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10), 
          child: GNav(

            //pagina atual
            selectedIndex: _index,

            //troca de index das paginas
            onTabChange: (index) {
              setState(() {
                _index = index;
              });
            },
            
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            mainAxisAlignment: MainAxisAlignment.center,
            gap: 8,

            //paginas 
            tabs: const [
              GButton(icon: Icons.home_outlined, text: 'Avisos', textStyle: TextStyle(fontSize: 20, color: Colors.white)),
              GButton(icon: Icons.add_circle_outline_rounded, text: 'Agendamento',textStyle: TextStyle(fontSize: 20, color: Colors.white)),
              GButton(icon: Icons.assessment_outlined, text: 'Informações', textStyle: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
        ),

      )
        
    );
  }
}