import 'package:flutter/material.dart';
import 'riwayat-detail.dart';

class Riwayat
    extends
        StatefulWidget {
  const Riwayat({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<
    Riwayat
  >
  createState() => _Riwayat();
}

class _Riwayat
    extends
        State<
          Riwayat
        > {
  final List<
    Map<
      String,
      String
    >
  >
  products = [
    {
      "nama": "Iphone 12",
      "harga": "11.000.000",
      "gambar": "https://images-cdn.ubuy.co.in/66292c9d2df83775d679582f-pre-owned-apple-iphone-12-carrier.jpg",
      "detail": "Iphone 12 adalah smartphone yang dirilis oleh Apple pada tahun 2020. Dikenal dengan desainnya yang elegan, layar Super Retina XDR, dan performa yang kuat berkat chip A14 Bionic. Memiliki kamera ganda dengan kemampuan fotografi yang canggih, serta dukungan untuk jaringan 5G.",
      "status": "Sedang Dikirim",
    },
    {
      "nama": "PlayStation 5",
      "harga": "8.000.000",
      "gambar": "https://whatnot.in/wp-content/uploads/2023/08/playstation-5-horizontal-product-shot-01-ps5-en-23nov20-scaled.webp",
      "detail": "PlayStation 5 adalah konsol game generasi terbaru dari Sony, dirilis pada November 2020. Dikenal dengan performa grafis yang mengesankan, kecepatan loading yang cepat berkat SSD, dan dukungan untuk ray tracing. Memiliki dua varian: versi standar dengan drive disk dan versi digital tanpa drive disk.",
      "status": "Sedang Diproses",
    },
    {
      "nama": "Google Pixel 9",
      "harga": "16.000.000",
      "gambar": "https://m.media-amazon.com/images/I/61fh21u3DJL._UF894,1000_QL80_.jpg",
      "detail": "Google Pixel 9 adalah smartphone yang dirilis oleh Google pada tahun 2023. Dikenal dengan kamera yang sangat baik, terutama dalam kondisi cahaya rendah, serta integrasi yang mendalam dengan layanan Google. Memiliki desain minimalis dan sistem operasi Android murni tanpa bloatware.",
      "status": "Telah tiba di tujuan penerima (Jack)",
    },
    {
      "nama": "Yamaha NMax Neo S",
      "harga": "50.000.000",
      "gambar": "https://yamahametro.com/wp-content/uploads/2024/07/NMAX-NEO-PUTIH.jpg",
      "detail": "Yamaha NMax Neo S adalah sepeda motor yang dirilis oleh Yamaha. Dikenal dengan desain sporty, performa mesin yang bertenaga, dan fitur-fitur modern seperti lampu LED dan panel instrumen digital. Cocok untuk penggunaan sehari-hari di perkotaan dengan kenyamanan berkendara yang baik.",
      "status": "Sedang Dikirim",
    },
  ];

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(
          33,
          53,
          85,
          1,
        ),
        title: Text(
          'Riwayat',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: "SF Pro",
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(
        245,
        239,
        231,
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
        currentIndex: 1,
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
        items: [
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
      body: ListView(
        padding: EdgeInsets.all(
          16,
        ),
        children: [
          Text(
            'Riwayat Pembelian',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'SF Pro',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ...products
              .map(
                (
                  product,
                ) => Card(
                  margin: EdgeInsets.only(
                    bottom: 12,
                  ),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        4,
                      ),
                      child: Image.network(
                        product['gambar']!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      product['nama']!,
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          "Rp",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(
                              255,
                              2,
                              132,
                              146,
                            ),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          product['harga']!, // Remove "Rp" prefix
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(
                              255,
                              2,
                              132,
                              146,
                            ),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => detailProduk(
                                nama: product['nama']!,
                                harga: product['harga']!,
                                gambar: product['gambar']!,
                                detail: product['detail']!,
                                status: product['status']!,
                              ),
                        ),
                      );
                    },
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
