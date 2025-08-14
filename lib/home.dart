import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'detail.dart';

class Home
    extends
        StatefulWidget {
  const Home({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<
    Home
  >
  createState() => _MyHome();
}

class _MyHome
    extends
        State<
          Home
        > {
  String kategoriAwal = "Semua";
  final List<
    Map<
      String,
      dynamic
    >
  >
  listproduct = [
    {
      "nama": "Iphone 12",
      "harga": "11.000.000",
      "gambar": "https://images-cdn.ubuy.co.in/66292c9d2df83775d679582f-pre-owned-apple-iphone-12-carrier.jpg",
      "detail": "Iphone 12 adalah smartphone yang dirilis oleh Apple pada tahun 2020. Dikenal dengan desainnya yang elegan, layar Super Retina XDR, dan performa yang kuat berkat chip A14 Bionic. Memiliki kamera ganda dengan kemampuan fotografi yang canggih, serta dukungan untuk jaringan 5G.",
      "kategori": "Handphone",
    },
    {
      "nama": "PlayStation 5",
      "harga": "8.000.000",
      "gambar": "https://whatnot.in/wp-content/uploads/2023/08/playstation-5-horizontal-product-shot-01-ps5-en-23nov20-scaled.webp",
      "detail": "PlayStation 5 adalah konsol game generasi terbaru dari Sony, dirilis pada November 2020. Dikenal dengan performa grafis yang mengesankan, kecepatan loading yang cepat berkat SSD, dan dukungan untuk ray tracing. Memiliki dua varian: versi standar dengan drive disk dan versi digital tanpa drive disk.",
      "kategori": "Elektronik",
    },
    {
      "nama": "Legion 5 Pro 2024",
      "harga": "25.000.000",
      "gambar": "https://i0.wp.com/alvatech.co.id/wp-content/uploads/2024/09/83DG000AID-1.jpg?fit=800%2C800&ssl=1",
      "detail": "Legion 5 Pro 2024 adalah laptop gaming dari Lenovo yang dirilis pada tahun 2024. Dikenal dengan performa tinggi berkat prosesor terbaru dan kartu grafis yang kuat, layar QHD dengan refresh rate tinggi, serta sistem pendingin yang efisien. Cocok untuk gamer yang menginginkan pengalaman bermain yang lancar dan responsif.",
      "kategori": "Laptop & Aksesoris",
    },
    {
      "nama": "Furina Series Plush ",
      "harga": "950.000",
      "gambar": "https://cdn.kyou.id/items/397983-furina-theme-fashion-series-sitting-plush-mascot-genshin-impact-35cm.jpg.webp",
      "detail": "Furina Theme Fashion Series Plush adalah boneka plushie yang terinspirasi dari karakter Furina dalam game Genshin Impact. Dengan ukuran 35cm, boneka ini memiliki detail yang halus dan desain yang menarik, cocok untuk koleksi atau hadiah bagi penggemar Genshin Impact.",
      "kategori": "Hobby",
    },
    {
      "nama": "Rexus DAXA Air II",
      "harga": "750.000",
      "gambar": "https://cdn.shopify.com/s/files/1/0601/6784/7989/files/DA2W_05_480x480.jpg?v=1705224064",
      "detail": "Rexus DAXA Air II adalah mouse gaming yang dirancang untuk kenyamanan dan performa tinggi. Dengan desain ergonomis, sensor presisi, dan berbagai fitur kustomisasi, mouse ini cocok untuk gamer yang menginginkan respons cepat dan akurasi dalam permainan.",
      "kategori": "Laptop & Aksesoris",
    },
    {
      "nama": "Topi Baseball",
      "harga": "18.000.000",
      "gambar": "https://down-id.img.susercontent.com/file/id-11134207-7rbk6-m9sy974j87alb8@resize_w900_nl.webp",
      "detail": "MacBook Air M2 adalah laptop ultra-tipis dari Apple yang dirilis pada tahun 2022. Ditenagai oleh chip M2, memberikan performa tinggi dengan efisiensi daya yang luar biasa. Cocok untuk produktivitas, desain grafis, dan penggunaan sehari-hari.",
      "kategori": "Fashion",
    },
    {
      "nama": "Stand Fan Miyako",
      "harga": "200.000",
      "gambar": "https://miyako.co.id/wp-content/uploads/2024/02/KAW-1262-GB-01.jpeg",
      "detail": "Stand Fan Miyako adalah kipas angin yang dirancang untuk memberikan sirkulasi udara yang optimal di ruangan. Dengan desain yang elegan dan fitur pengaturan kecepatan, kipas ini cocok untuk digunakan di rumah atau kantor, memberikan kenyamanan di hari-hari panas.",
      "kategori": "Elektronik",
    },
    {
      "nama": "PS4 DualShock Controller",
      "harga": "500.000",
      "gambar": "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/sony_-sony-ps4--dualshock-4-wireless-controller_full02.jpg",
      "detail": "PS4 DualShock Controller adalah pengendali resmi untuk konsol PlayStation 4. Dikenal dengan desain ergonomis, tombol responsif, dan fitur inovatif seperti touchpad dan speaker built-in. Cocok untuk pengalaman bermain game yang lebih imersif dan nyaman.",
      "kategori": "Laptop & Aksesoris",
    },
    {
      "nama": "Samsung Galaxy Z Fold 4",
      "harga": "30.000.000",
      "gambar": "https://images.tokopedia.net/img/cache/700/OJWluG/2023/1/17/039c5a85-7097-41bb-bbca-e5b596625e93.jpg",
      "detail": "Samsung Galaxy Z Fold 4 adalah smartphone lipat yang dirilis pada tahun 2022. Dikenal dengan layar lipat yang inovatif, memungkinkan pengguna untuk memiliki pengalaman tablet dalam ukuran ponsel. Ditenagai oleh prosesor canggih, kamera berkualitas tinggi, dan dukungan multitasking yang kuat.",
      "kategori": "Handphone",
    },
    {
      "nama": "Ghost Night Lamp",
      "harga": "150.000",
      "gambar": "https://down-id.img.susercontent.com/file/id-11134201-7rbk4-m9dgv96rw64bd3@resize_w900_nl.webp",
      "detail": "HuTao Ghost Night Lamp adalah lampu malam yang terinspirasi dari karakter HuTao dalam game Genshin Impact. Dengan desain yang unik dan pencahayaan lembut, lampu ini cocok untuk dekorasi kamar atau sebagai hadiah bagi penggemar Genshin Impact.",
      "kategori": "Hobby",
    },
  ];
  @override
  Widget build(
    BuildContext context,
  ) {
    final kategoriTerpilih =
        kategoriAwal ==
            "Semua"
        ? listproduct
        : listproduct
              .where(
                (
                  p,
                ) =>
                    p['kategori'] ==
                    kategoriAwal,
              )
              .toList();

    return BackdropScaffold(
      appBar: BackdropAppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(
          33,
          53,
          85,
          1,
        ),
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "SF Pro",
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(
        255,
        150,
        13,
        1,
      ),

      backLayerBackgroundColor: Color.fromRGBO(
        33,
        53,
        85,
        1,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(
          33,
          53,
          85,
          1,
        ),
        unselectedItemColor: Colors.grey[400],
        currentIndex: 0,
        onTap:
            (
              index,
            ) {
              if (index ==
                  0) {
                Navigator.popAndPushNamed(
                  context,
                  '/',
                );
              }
              if (index ==
                  1) {
                Navigator.popAndPushNamed(
                  context,
                  '/riwayat',
                );
              }
              if (index ==
                  2) {
                Navigator.popAndPushNamed(
                  context,
                  '/profile',
                );
              }
            },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
      backLayer: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(
              12,
            ),
            child: Text(
              "Pilih Kategori",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          for (var kategori in [
            "Semua",
            "Handphone",
            "Elektronik",
            "Laptop & Aksesoris",
            "Hobby",
            "Fashion",
          ])
            ListTile(
              title: Text(
                kategori,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading:
                  Radio<
                    String
                  >(
                    value: kategori,
                    groupValue: kategoriAwal,
                    onChanged:
                        (
                          val,
                        ) {
                          setState(
                            () {
                              kategoriAwal = val!;
                            },
                          );
                        },
                  ),
            ),
        ],
      ),
      frontLayer: Container(
        color: Color.fromRGBO(
          245,
          239,
          231,
          1,
        ), // Mengubah warna latar belakang frontLayer
        child: ListView(
          padding: EdgeInsets.all(
            25,
          ),
          children: [
            Text(
              'Rekomendasi',
              style: TextStyle(
                fontFamily: 'SF Pro',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 0.58,
              children: kategoriTerpilih.map(
                (
                  produk,
                ) {
                  return ListItem(
                    context: context,
                    nama: produk['nama'],
                    harga: produk['harga'],
                    gambar: produk['gambar'],
                    detail: produk['detail'],
                    kategori: produk['kategori'],
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget ListItem({
    required String nama,
    required String harga,
    required String gambar,
    required String detail,
    required String kategori,
    required BuildContext context,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(
                  8,
                ),
              ),
              child: Image.network(
                gambar,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Rp",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(
                          59,
                          103,
                          173,
                          1,
                        ),
                      ),
                    ),
                    Text(
                      harga,
                      style: const TextStyle(
                        fontSize: 19,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(
                          59,
                          103,
                          173,
                          1,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  kategori,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(
                      255,
                      0,
                      0,
                      0,
                    ),
                    fontFamily: 'SF Pro',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                _,
                              ) => detailProduk(
                                nama: nama,
                                harga: harga,
                                gambar: gambar,
                                detail: detail,
                              ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(
                        62,
                        88,
                        121,
                        1,
                      ),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(
                          5.0,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Detail",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
