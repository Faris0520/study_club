import 'package:flutter/material.dart';
import 'profile.dart';
import 'home.dart';

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
            childAspectRatio: 0.78,
            children:
                <
                  Widget
                >[
                  ListItem(
                    nama: "Iphone 12",
                    harga: "Rp. 11.000.000",
                    Gambar: "https://images-cdn.ubuy.co.in/66292c9d2df83775d679582f-pre-owned-apple-iphone-12-carrier.jpg",
                  ),
                  ListItem(
                    nama: "Iphone 11",
                    harga: "Rp. 8.000.000",
                    Gambar: "https://images-cdn.ubuy.co.id/64c0e3ce88e52d13f021245f-total-by-verizon-apple-iphone-11-64gb.jpg",
                  ),
                  ListItem(
                    nama: "Iphone 14",
                    harga: "Rp. 16.000.000",
                    Gambar: "https://www.digimap.co.id/cdn/shop/files/iPhone_14_Plus_Blue_PDP_Image_Position-1A__WWEN_f14f7e0c-57e1-4d73-9982-8fc99d79d15f.jpg?v=1717740790&width=823",
                  ),
                  ListItem(
                    nama: "Iphone 15",
                    harga: "Rp. 20.000.000",
                    Gambar: "https://cdnpro.eraspace.com/media/catalog/product/a/p/apple_iphone_15_blue_1.jpg",
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
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 170.0,
        width: 170.0,
        color: const Color.fromARGB(
          255,
          130,
          216,
          255,
        ),
        padding: EdgeInsets.all(
          5,
        ),
        child: Image.network(
          Gambar,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: 4,
      ),
      Text(
        nama,
        style: TextStyle(
          fontFamily: 'Google Sans',
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        harga,
        style: TextStyle(
          fontFamily: 'Google Sans',
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
