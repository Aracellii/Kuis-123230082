class Film {
  final String title;
  final String year;
  final String genre;
  final double rating;
  final String image;
  final String deskripsi;
  final String wikipedia;

  Film({
    required this.title,
    required this.year,
    required this.genre,
    required this.rating,
    required this.image,
    required this.deskripsi,
    required this.wikipedia,
  });
}

List<Film> filmList = [
  Film(
    title: "Avengers: Endgame",
    year: "2019",
    genre: "Action, Sci-Fi",
    rating: 8.4,
    image: "assets/endgame.jpeg",
    deskripsi: "Setelah peristiwa tragis di Avengers: Infinity War, para Avengers yang tersisa bekerja sama untuk membalikkan kerusakan yang disebabkan oleh Thanos dan mengembalikan keseimbangan di alam semesta.",
    wikipedia: "https://id.wikipedia.org/wiki/Avengers:_Endgame",
  ),
  Film(
    title: "Inception",
    year: "2010",
    genre: "Sci-Fi, Thriller",
    rating: 8.8,
    image: "assets/inception.jpeg",
    deskripsi: "Dom Cobb adalah seorang pencuri yang memiliki kemampuan untuk masuk ke dalam mimpi orang lain dan mencuri rahasia dari bawah sadar mereka.",
    wikipedia: "https://id.wikipedia.org/wiki/Inception",
  ),
  Film(
    title: "Interstellar",
    year: "2014",
    genre: "Sci-Fi, Drama",
    rating: 8.6,
    image: "assets/interstellar.webp",
    deskripsi: "Di masa depan yang suram, Bumi menghadapi kehancuran lingkungan.",
    wikipedia: "https://id.wikipedia.org/wiki/Interstellar",
  ),
  Film(
    title: "The Dark Knight",
    year: "2008",
    genre: "Action, Crime",
    rating: 9.0,
    image: "assets/dark_knight.jpeg",
    deskripsi: "Batman menghadapi musuh terbesarnya, Joker, yang ingin menciptakan kekacauan di Gotham City.",
    wikipedia: "https://en.wikipedia.org/wiki/The_Dark_Knight",
  ),
];