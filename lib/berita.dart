class Film {
  final String title;
  final String image;
  final String deskripsi;
  final String wikipedia;
  double like;

  Film({
    required this.title,
    required this.image,
    required this.deskripsi,
    required this.wikipedia,
    required this.like,
  });
}

List<Film> filmList = [
  Film(
    title: "Bahlil akan beri insentif konversi motor bensin jadi listrik",
    image: "assets/bahlil.jpg",
    deskripsi: "Jakarta (ANTARA) - Menteri Energi dan Sumber Daya Mineral (ESDM) Bahlil Lahadalia menyampaikan akan memberikan insentif untuk program konversi motor bensin menjadi motor listrik, sebagaimana yang sebelumnya telah dilakukan oleh Kementerian ESDM.",
    wikipedia: "https://id.wikipedia.org/wiki/Avengers:_Endgame",
    like: 0,
  ),
  Film(
    title: "Diserang Bertubi-tubi, Israel Balas Serang Peluncur Rudal Iran",
    image: "assets/iran.jpeg",
    deskripsi: "Jakarta - Iran kembali meluncurkan rudal ke Israel hingga memicu peringatan serangan udara di beberapa wilayah Israel. Tak lama usai diserang Iran, Israel mengaku telah menyerang peluncur rudal milik IranDilansir AFP, Selasa (10/3/2023), serangan tersebut terjadi pada Senin malam, militer Israel mengatakan telah mengidentifikasi serangan rudal Iran. Kemudian militer Israel berupaya mencegat ancaman tersebut.Serangan rudal Iran tersebut sempat memicu peringatan serangan udara di beberapa bagian Israel. Warga lalu berupaya mencari perlindungan ke selter.",
    wikipedia: "https://news.detik.com/internasional/d-8392609/diserang-bertubi-tubi-israel-balas-serang-peluncur-rudal-iran",
    like: 0,

  ),
  Film(
    title: "PDIP Balas Cak Imin soal Benahi Transportasi DKI: Omon-omon Pra-kampanye",
    image: "assets/banteng.webp",
    deskripsi: "Di masa depan yang suram, Bumi menghadapi kehancuran lingkungan.",
    wikipedia: "Jakarta - Ketua DPP PDIP Andreas Hugo Pareira menanggapi Ketum PKB Muhaimin Iskandar (Cak Imin) yang menyoroti persoalan transportasi publik di Jakarta. Andreas menilai persoalan transportasi di kota besar memang menjadi tantangan yang selalu dihadapi berbagai negara.",
    like: 0,

  ),
  Film(
    title: "Serba-serbi Polri Bekuk Buron Interpol Jimmy Lie di Malaysia",
    image: "assets/buron.webp",
    deskripsi: "Jakarta - Pelarian Jimmy Lie, buronan interpol berakhir sudah. Setelah hampir setengah tahun kabur, ia akhirnya tertangkap di Malaysia.Jimmy Lie merupakan seorang warga negara Indonesia (WNI). Dia ditetapkan dalam daftar red notice setelah melarikan diri.Sebagai informasi, Jimmy Lie adalah buron kasus suap hampir Rp 1 miliar untuk pengurusan sertifikat tanah melalui program Pendaftaran Tanah Sistematis Lengkap (PTSL) di Kabupaten Tangerang. Di tengah proses hukum tersebut, Jimmy Lie melarikan diri hingga akhirnya diterbitkan dalam daftar red notice pada September 2025 dan terdeteksi berada di Malaysia.",
    wikipedia: "https://news.detik.com/berita/d-8392573/serba-serbi-polri-bekuk-buron-interpol-jimmy-lie-di-malaysia",
    like: 0,

  ),
];