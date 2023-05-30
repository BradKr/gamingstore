import 'package:gamingstore/buscar/movie_model.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  static List<MovieModel> main_movies_list = [
    MovieModel("Sonic Frontiers - PlayStation 4", 2000, 's/.200.00',
        "https://m.media-amazon.com/images/I/81oAMvUkUpL._AC_SL1500_.jpg"),
    MovieModel(
        "Grand Theft Auto V Premium Edition Playstation 4",
        2015,
        's/.200.00',
        "https://m.media-amazon.com/images/I/81MACEI0pzL._AC_UY218_.jpg"),
    MovieModel("FIFA 23 - For PlayStation 4", 2023, 's/.200.00',
        "https://m.media-amazon.com/images/I/61ghCI4Kc4L._SX300_SY300_QL70_FMwebp_.jpg"),
    MovieModel(
        "Crash Team Racing - Nitro Fueled - PlayStation 4",
        1994,
        's/.200.00',
        "https://m.media-amazon.com/images/I/81yXTHEMPQL._AC_UY218_.jpg"),
    MovieModel("NBA 2K23 - PlayStation 4", 1994, 's/.200.00',
        "https://m.media-amazon.com/images/I/81adYfJHzkL._AC_SX425_.jpg"),
    MovieModel(
        "Marvel's Spider-Man: Miles Morales - PlayStation 4",
        1994,
        's/.200.00',
        "https://m.media-amazon.com/images/I/81sB3Qert+L._SX385_.jpg"),
    MovieModel(
        "Uncharted: The Nathan Drake Collection (PS4)",
        1994,
        's/.200.00',
        "https://m.media-amazon.com/images/I/71bLLFeaDcL._SX385_.jpg"),
    MovieModel("Minecraft Starter Collection (PS4)", 1994, 's/.200.00',
        "https://m.media-amazon.com/images/I/81aquYOl5iS._AC_UY218_.jpg"),
    MovieModel("Battlefield 2042 - PlayStation 4", 1994, 's/.200.00',
        "https://m.media-amazon.com/images/I/718kvmTYm6L._SX425_.jpg"),
    MovieModel("DRAGON BALL Z: Kakarot - PlayStation 4", 1994, 's/.200.00',
        "https://m.media-amazon.com/images/I/71h2AmsPyOL._SX385_.jpg"),
    MovieModel(
        "Dead Island 2: Day 1 Edition - PlayStation 5",
        1994,
        's/.200.00',
        "https://m.media-amazon.com/images/I/81KvEZRWmWL._AC_UY218_.jpg"),
    MovieModel("Resident Evil 4 - PS5", 1994, 's/.200.00',
        "https://m.media-amazon.com/images/I/712XPl7+qKL._AC_SX522_.jpg"),
    MovieModel(
        "Hogwarts Legacy - PlayStation 5 EU Import Region Free",
        2022,
        's/.200.00',
        "https://m.media-amazon.com/images/I/711LbTnKy7L._SL1500_.jpg"),
    MovieModel(
        "Minecraft Legends - Deluxe Edition PlayStation 5",
        2022,
        's/.200.00',
        "https://m.media-amazon.com/images/I/81UEz2-FIdL._SX385_.jpg"),
    MovieModel("Marvel's Avengers-PlayStation 5", 2022, 's/.200.00',
        "https://m.media-amazon.com/images/I/71CVPn65SXL._SX385_.jpg"),
    MovieModel("EA SPORTS UFC 4 - PlayStation 4", 2022, 's/.200.00',
        "https://m.media-amazon.com/images/I/81OUnHR73cL._SX385_.jpg"),
    MovieModel("LEGO Brawls - PlayStation 5", 2022, 's/.200.00',
        "https://m.media-amazon.com/images/I/81bjYo7wVDL._AC_UY218_.jpg"),
    MovieModel(
        "Just Dance 2023 Edition - Code in box, PlayStation 5",
        2022,
        's/.200.00',
        "https://m.media-amazon.com/images/I/81t1Oz96ypL._SX342_.jpg"),
    MovieModel("Call Of Duty: Vanguard (PS5) (PS5)", 2022, 's/.200.00',
        "https://m.media-amazon.com/images/I/615q-XB5h5L._SX466_.jpg"),
  ];

  List<MovieModel> display_list = List.from(main_movies_list);

  void updateList(String value) {
    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.movie_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //CAMBIO DE FONDO TOTAL
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "EXPLORA TU GAME",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green, //fondo de la parte del buscador
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Accion, Aventura, deportes, Ficcion",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.white), //cambio de color del buscador
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.length == 0
                  ? Center(
                      child: Text(
                      "now result found",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(
                          display_list[index].movie_title!,
                          style: TextStyle(
                            color: Colors
                                .black, //cambio de color de las letras de todos los videojuegos
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '${display_list[index].movie_release_year!}',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        trailing: Text(
                          "${display_list[index].rating}",
                          style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
                        ),
                        leading: Image.network(
                            display_list[index].movie_poster_url!),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
