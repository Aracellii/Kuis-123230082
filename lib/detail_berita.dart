import 'package:flutter/material.dart';
import 'berita.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailFilmPage extends StatelessWidget {
  final Film film;

  const DetailFilmPage({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(film.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                film.image,
                height: 300,
              ),
            ),
            const SizedBox(height: 20),
            Text(               
              film.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Deskripsi: ${film.deskripsi}",
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                final Uri url = Uri.parse(film.wikipedia);

                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                }
              },
              child: const Text("Lihat Sumber"),
            ),
          ],
        ),
      ),
    );
  } 
}