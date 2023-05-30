import 'package:gamingstore/bdjuegos/juegosbd.dart';

class Item {
  String id;
  String nombre;
  double precio;
  String unidad;
  String imagen;
  int cantidad;

  Item(
      {required this.id,
      required this.nombre,
      required this.precio,
      required this.unidad,
      required this.imagen,
      required this.cantidad});

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["nombre"] = nombre;
    map["precio"] = precio;
    map["unidad"] = unidad;
    map["imagen"] = imagen;
    map["cantidad"] = cantidad;

    return map;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = id;
    data["nombre"] = nombre;
    data["precio"] = precio;
    data["unidad"] = unidad;
    data["imagen"] = imagen;
    data["cantidad"] = cantidad;

    return data;
  }
}
