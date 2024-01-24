import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(
        //imagem de autoria da barbearia Ryan Fagner em parnamirim
        title: Image.network(
          'https://topsalao.com/dados_usuarios/topsalao/102922/foto_capa.jpg?atualizador=15619',
          width: 100,
          height: 100,
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        width: 300,
        backgroundColor: Colors.grey.shade600,
        child: Center(
          child: 
            TextButton(
              child: const Text('Desenvolvedor', style: TextStyle(color: Colors.white),),
              onPressed: () {
              },
            ),
        ),
      ),

      //google_navigation_bar
      bottomNavigationBar: GNav(

        //pagina atual
        selectedIndex: _index,

        //teste de index das paginas
        onTabChange: (_index) => {
          print(_index)
        },
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        gap: 8, 
        tabs: const [
          GButton(icon: Icons.home_outlined, text: 'Avisos',),
          GButton(icon: Icons.add_circle_outline_rounded, text: 'Agendamento',),
          GButton(icon: Icons.assessment_outlined, text: 'Informações'),
        ],
      ),
    );
  }
}