import 'package:flutter/material.dart';
import 'detail_berita.dart';
import 'berita.dart';

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
          bool isLiked=true;

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
                            isLiked ? const Color.fromARGB(255, 208, 15, 82) : Colors.white,
                        side: BorderSide(
                          color: isLiked ? const Color.fromARGB(255, 233, 138, 14) : Colors.grey,
                        ),
                      ),
                        
                  
                      onPressed: () {
                        if(isLiked=true){
                        setState(() {
                        isLiked = false;
                        film.like = film.like+1;
                        });}
                        else{
                        setState(() {
                        isLiked = true;
                        film.like = film.like-1;
                        });}
                      },
                     
                      child: Text(
                        "${film.like}",
                        style: TextStyle(
                          color: isLiked? const Color.fromARGB(255, 255, 255, 255) : const Color.fromARGB(255, 209, 4, 4),
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