import 'package:flutter/material.dart';
import 'detail_film.dart';
import 'film.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<bool> addedList = List.generate(filmList.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Film"),
      ),
      body: ListView.builder(
        itemCount: filmList.length,
        itemBuilder: (context, index) {
          final film = filmList[index];
          bool isAdded = addedList[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                      film.image,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(film.title),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tahun: ${film.year}"),
                        Text("Genre: ${film.genre}"),
                        Text("Rating:${film.rating}"),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailFilmPage(film: film),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor:
                            isAdded ? Colors.blue : Colors.white,
                        side: BorderSide(
                          color: isAdded ? Colors.blue : Colors.grey,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          addedList[index] = !addedList[index];
                        });
                      },
                      child: Text(
                        "Tambahkan ke Daftar",
                        style: TextStyle(
                          color: isAdded ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}