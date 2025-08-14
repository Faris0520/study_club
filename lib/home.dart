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
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(
          255,
          17,
          97,
          246,
        ),
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Google Sans",
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey[700],
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
                  '/profile',
                );
              }
              if (index ==
                  2) {
                Navigator.popAndPushNamed(
                  context,
                  '/riwayat',
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
              Icons.person,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: 'Riwayat',
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(
          25,
        ),
        children: [
          Text(
            'Rekomendasi',
            style: TextStyle(
              fontFamily: 'Google Sans',
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
            childAspectRatio: 0.6,
            children:
                <
                  Widget
                >[
                  ListItem(
                    context: context,
                    nama: "Iphone 12",
                    harga: "11.000.000",
                    gambar: "https://images-cdn.ubuy.co.in/66292c9d2df83775d679582f-pre-owned-apple-iphone-12-carrier.jpg",
                    detail: "Iphone 12 adalah smartphone yang dirilis oleh Apple pada tahun 2020. Dikenal dengan desainnya yang elegan, layar Super Retina XDR, dan performa yang kuat berkat chip A14 Bionic. Memiliki kamera ganda dengan kemampuan fotografi yang canggih, serta dukungan untuk jaringan 5G.",
                  ),
                  ListItem(
                    context: context,
                    nama: "PlayStation 5",
                    harga: "8.000.000",
                    gambar: "https://whatnot.in/wp-content/uploads/2023/08/playstation-5-horizontal-product-shot-01-ps5-en-23nov20-scaled.webp",
                    detail: "PlayStation 5 adalah konsol game generasi terbaru dari Sony, dirilis pada November 2020. Dikenal dengan performa grafis yang mengesankan, kecepatan loading yang cepat berkat SSD, dan dukungan untuk ray tracing. Memiliki dua varian: versi standar dengan drive disk dan versi digital tanpa drive disk.",
                  ),
                  ListItem(
                    context: context,
                    nama: "Google Pixel 9",
                    harga: "16.000.000",
                    gambar: "https://m.media-amazon.com/images/I/61fh21u3DJL._UF894,1000_QL80_.jpg",
                    detail: "Google Pixel 9 adalah smartphone yang dirilis oleh Google pada tahun 2023. Dikenal dengan kamera yang sangat baik, terutama dalam kondisi cahaya rendah, serta integrasi yang mendalam dengan layanan Google. Memiliki desain minimalis dan sistem operasi Android murni tanpa bloatware.",
                  ),
                  ListItem(
                    context: context,
                    nama: "Yamaha NMax Neo S",
                    harga: "50.000.000",
                    gambar: "https://yamahametro.com/wp-content/uploads/2024/07/NMAX-NEO-PUTIH.jpg",
                    detail: "Yamaha NMax Neo S adalah sepeda motor yang dirilis oleh Yamaha. Dikenal dengan desain sporty, performa mesin yang bertenaga, dan fitur-fitur modern seperti lampu LED dan panel instrumen digital. Cocok untuk penggunaan sehari-hari di perkotaan dengan kenyamanan berkendara yang baik.",
                  ),
                  ListItem(
                    context: context,
                    nama: "Samsung Galaxy S23",
                    harga: "15.000.000",
                    gambar: "https://m.media-amazon.com/images/I/71RnJXDexML._UF1000,1000_QL80_.jpg",
                    detail: "Samsung Galaxy S23 adalah smartphone flagship dari Samsung yang dirilis pada tahun 2023. Dilengkapi dengan layar AMOLED yang tajam, performa tinggi berkat prosesor Snapdragon 8 Gen 2, dan kamera yang mampu menghasilkan foto berkualitas tinggi. Cocok untuk pengguna yang menginginkan teknologi terbaru.",
                  ),
                  ListItem(
                    context: context,
                    nama: "MacBook Air M2",
                    harga: "18.000.000",
                    gambar: "https://cdnpro.eraspace.com/media/catalog/product/m/a/macbook_air_m2_space_gray_pdp_image_position-0__id_1_1.jpg",
                    detail: "MacBook Air M2 adalah laptop ultra-tipis dari Apple yang dirilis pada tahun 2022. Ditenagai oleh chip M2, memberikan performa tinggi dengan efisiensi daya yang luar biasa. Cocok untuk produktivitas, desain grafis, dan penggunaan sehari-hari.",
                  ),
                ],
          ),
        ],
      ),
    );
  }
}

Widget
ListItem({
  required String nama,
  required String harga,
  required String gambar,
  required String detail,
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
                  fontFamily: "Google Sans",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Rp",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                        255,
                        0,
                        85,
                        255,
                      ),
                    ),
                  ),
                  Text(
                    harga,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                        255,
                        0,
                        85,
                        255,
                      ),
                    ),
                  ),
                ],
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
                    backgroundColor: Color.fromARGB(
                      255,
                      76,
                      111,
                      183,
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
