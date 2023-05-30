import 'package:flutter/material.dart';
import 'package:gamingstore/buscar/buscar.dart';
import 'package:gamingstore/catalogo.dart';
import 'package:gamingstore/inicio.dart';
import 'package:gamingstore/ofertas.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectindex = 0;

  final List<String> _titles = const [
    'Inicio',
    'Buscador',
    'Catalogo',
    'CarritoCompras',
  ];

  final List<Widget> _tabs = [
    Inicio(),
    Searchpage(),
    Catalogo(),
    CarritoCompras(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectindex],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          _titles[_selectindex],
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            onTabChange: (newIndex) {
              setState(() {
                _selectindex = newIndex;
              });
            },
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade900,
            padding: EdgeInsets.all(20),
            tabs: const [
              GButton(
                gap: 5,
                icon: Icons.home,
                text: 'Inicio',
              ),
              GButton(
                gap: 5,
                icon: Icons.search,
                text: 'Buscar',
              ),
              GButton(
                gap: 5,
                icon: Icons.bookmark_add,
                text: 'Catalogo',
              ),
              GButton(
                gap: 5,
                icon: Icons.shopping_cart,
                text: 'Compras',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
