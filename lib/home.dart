import 'package:flutter/material.dart';
import 'profile.dart';
import 'home.dart';
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
        backgroundColor: Theme.of(
          context,
        ).colorScheme.inversePrimary,
        title: Text(
          'Home',
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
                  0)
                Navigator.popAndPushNamed(
                  context,
                  '/',
                );
              if (index ==
                  1)
                Navigator.popAndPushNamed(
                  context,
                  '/profile',
                );
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
              Icons.settings,
            ),
            label: 'Pengaturan',
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
                    harga: "Rp11.000.000",
                    Gambar: "https://images-cdn.ubuy.co.in/66292c9d2df83775d679582f-pre-owned-apple-iphone-12-carrier.jpg",
                    detail: "jawa horeg",
                  ),
                  ListItem(
                    context: context,
                    nama: "Iphone 11",
                    harga: "Rp8.000.000",
                    Gambar: "https://images-cdn.ubuy.co.id/64c0e3ce88e52d13f021245f-total-by-verizon-apple-iphone-11-64gb.jpg",
                    detail: "medan magnet",
                  ),
                  ListItem(
                    context: context,
                    nama: "Iphone 14",
                    harga: "Rp16.000.000",
                    Gambar: "https://www.digimap.co.id/cdn/shop/files/iPhone_14_Plus_Blue_PDP_Image_Position-1A__WWEN_f14f7e0c-57e1-4d73-9982-8fc99d79d15f.jpg?v=1717740790&width=823",
                    detail: "palembang rendang",
                  ),
                  ListItem(
                    context: context,
                    nama: "Iphone 15",
                    harga: "Rp20.000.000",
                    Gambar: "https://cdnpro.eraspace.com/media/catalog/product/a/p/apple_iphone_15_blue_1.jpg",
                    detail: "jambi judol",
                  ),
                  ListItem(
                    context: context,
                    nama: "Iphone 15",
                    harga: "Rp20.000.000",
                    Gambar: "https://cdnpro.eraspace.com/media/catalog/product/a/p/apple_iphone_15_blue_1.jpg",
                    detail: "jambi judol",
                  ),
                  ListItem(
                    context: context,
                    nama: "Iphone 15",
                    harga: "Rp20.000.000",
                    Gambar: "https://cdnpro.eraspace.com/media/catalog/product/a/p/apple_iphone_15_blue_1.jpg",
                    detail: "jambi judol",
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
  required String Gambar,
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
              Gambar,
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
                ),
              ),
              Text(
                harga,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(
                    255,
                    2,
                    132,
                    146,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
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
                            Gambar: Gambar,
                            detail: detail,
                          ),
                    ),
                  );
                },
                child: const Text(
                  "Detail",
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
