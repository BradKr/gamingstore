import 'package:flutter/material.dart';
import 'package:gamingstore/compras/carrito.dart';
import 'package:gamingstore/homepage.dart';
import 'package:gamingstore/sesion/src/app.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => Carrito(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyappInicio(),
    );
  }
}
