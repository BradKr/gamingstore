import 'package:flutter/material.dart';
import 'package:gamingstore/bdjuegos/juegosbd.dart';
import 'package:gamingstore/compras/carrito.dart';
import 'package:gamingstore/ofertas.dart';
import 'package:provider/provider.dart';

class Catalogo extends StatefulWidget {
  @override
  _CatalogoState createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  final GlobalKey<ScaffoldMessengerState> _globalKey =
      new GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          key: _globalKey,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            bottom: TabBar(
              tabs: <Widget>[
                new Tab(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text("Aventura"),
                  ),
                ),
                new Tab(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text("Deportes"),
                  ),
                ),
                new Tab(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text("Accion"),
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                    itemCount: juegosA.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 1.1),
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x000005cc),
                                  blurRadius: 30,
                                  offset: Offset(10, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Image.asset("assets/" + juegosA[index].imagen),
                            Text(
                              juegosA[index].nombre,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                  "S/." + juegosA[index].precio.toString(),
                                  style: TextStyle(fontSize: 16)),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  carrito.agregarItem(
                                    juegosA[index].id.toString(),
                                    juegosA[index].nombre,
                                    juegosA[index].precio,
                                    "1",
                                    juegosA[index].imagen,
                                    1,
                                  );
                                });
                              },
                              icon: Icon(Icons.shopping_cart),
                              label: Text("Agregar"),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                    itemCount: juegosD.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 1.1),
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x000005cc),
                                  blurRadius: 30,
                                  offset: Offset(10, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Image.asset("assets/" + juegosD[index].imagen),
                            Text(
                              juegosD[index].nombre,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "S/." + juegosD[index].precio.toString(),
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  carrito.agregarItem(
                                    juegosD[index].id.toString(),
                                    juegosD[index].nombre,
                                    juegosD[index].precio,
                                    "1",
                                    juegosD[index].imagen,
                                    1,
                                  );
                                });
                              },
                              icon: Icon(Icons.shopping_cart),
                              label: Text("Agregar"),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                    itemCount: juegosAC.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 1.1),
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x000005cc),
                                  blurRadius: 30,
                                  offset: Offset(10, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Image.asset("assets/" + juegosAC[index].imagen),
                            Text(
                              juegosAC[index].nombre,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "S/." + juegosAC[index].precio.toString(),
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  carrito.agregarItem(
                                    juegosAC[index].id.toString(),
                                    juegosAC[index].nombre,
                                    juegosAC[index].precio,
                                    "1",
                                    juegosAC[index].imagen,
                                    1,
                                  );
                                });
                              },
                              icon: Icon(Icons.shopping_cart),
                              label: Text("Agregar"),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      );
    });
  }
}
