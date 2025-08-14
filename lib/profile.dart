import 'package:flutter/material.dart';

void
main() {
  runApp(
    const MyApp(),
  );
}

class MyApp
    extends
        StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(
            255,
            7,
            204,
            234,
          ),
        ),
      ),
      home: const Profile(
        title: 'Study Club',
      ),
    );
  }
}

class Profile
    extends
        StatefulWidget {
  final String title;

  const Profile({
    super.key,
    required this.title,
  });

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState
    extends
        State<
          Profile
        > {
  @override
  Widget build(
    BuildContext context,
  ) {
    void dialog(
      BuildContext context,
    ) {
      showDialog(
        context: context,
        builder:
            (
              BuildContext context,
            ) {
              return AlertDialog(
                title: Text(
                  "Data berhasil diubah!",
                ),
                content: Text(
                  "Data telah disimpan.",
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pop();
                    },
                    child: const Text(
                      "Tutup",
                    ),
                  ),
                ],
              );
            },
      );
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(
        245,
        239,
        231,
        1,
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(
          33,
          53,
          85,
          1,
        ),
        centerTitle: true,

        title: Text(
          textAlign: TextAlign.center,
          widget.title,
          style: TextStyle(
            fontFamily: "Google Sans",
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey[700],
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
      body: Padding(
        padding: EdgeInsets.all(
          25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "Assets/Image/hutao.jpg",
                        ),
                        radius: 85,
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.all(
                            9,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(
                              255,
                              212,
                              211,
                              211,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.grey[700],
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Nama",
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Google Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Faris Daffa",
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'Google Sans',
              ),
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Text(
              "Email",
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Google Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "farisdaffarin@gmail.com",
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'Google Sans',
              ),
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Text(
              "Phone",
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Google Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "+6289652043636",
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Text(
              "About Me",
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Google Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              """Lorem ipsum dolor sit amet, consectetur adipiscing . """,
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'Google Sans',
              ),
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(
                  62,
                  88,
                  121,
                  1,
                ),
              ),
              onPressed: () => dialog(
                context,
              ),
              child: Text(
                "Update",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),

      /*body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              <
                Widget
              >[
                Text(
                  'Profile',
                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Product Sans',
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://media.discordapp.net/stickers/1337728804583641181.webp",
                  ),
                  radius: 70,
                ),
                Text(
                  'Faris Daffa',
                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Product Sans',
                    fontWeight: FontWeight.bold,
                    height: 3,
                  ),
                ),
                /*Image.network(
                  "https://media.discordapp.net/stickers/1369653816726913148.webp",
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),*/
              ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            child: const Icon(
              Icons.add,
            ),
          ),

          const SizedBox(
            height: 200,
            width: 20,
          ),

          FloatingActionButton(
            onPressed: _incrementCounter,
            child: const Icon(
              Icons.restart_alt_rounded,
            ),
          ),
        ],
      ),*/
    );
  }
}
