import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'compras/carrito.dart';

class CarritoCompras extends StatefulWidget {
  @override
  _CarritoComprasState createState() => _CarritoComprasState();
}

class _CarritoComprasState extends State<CarritoCompras> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
        ),
        body: Container(
            child: carrito.items.length == 0
                ? Center(
                    child: Text("Carrito vacio"),
                  )
                : Column(
                    children: <Widget>[
                      for (var item in carrito.items.values)
                        Card(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Image.asset(
                                "assets/" + item.imagen,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  height: 100,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(item.nombre),
                                      Text("S/." +
                                          item.precio.toString() +
                                          "x" +
                                          item.unidad),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            child: IconButton(
                                              icon: Icon(Icons.remove),
                                              onPressed: () {
                                                setState(() {
                                                  carrito
                                                      .decrementarCantidadItem(
                                                          item.id);
                                                });
                                              },
                                            ),
                                          ),
                                          Container(
                                            child: Center(
                                              child: Text(
                                                  item.cantidad.toString()),
                                            ),
                                          ),
                                          Container(
                                            child: IconButton(
                                              icon: Icon(Icons.add),
                                              onPressed: () {
                                                setState(() {
                                                  carrito
                                                      .incrementarCantidadItem(
                                                          item.id);
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: 70,
                                decoration: BoxDecoration(color: Colors.grey),
                                child: Center(
                                  child: Text("S/." +
                                      (item.precio * item.cantidad).toString()),
                                ),
                              )
                            ],
                          ),
                        ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text("Subtotal: "),
                            ),
                            Text("S/." + carrito.subTotal.toStringAsFixed(2))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text("Impuesto: "),
                            ),
                            Text("S/." + carrito.impuesto.toStringAsFixed(2))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text("Total a Pagar: "),
                            ),
                            Text("S/." + carrito.total.toStringAsFixed(2))
                          ],
                        ),
                      ),
                    ],
                  )),
      );
    });
  }
}
