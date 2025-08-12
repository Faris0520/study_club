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
      home: const MyHomePage(
        title: 'Study Club',
      ),
    );
  }
}

class MyHomePage
    extends
        StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<
    MyHomePage
  >
  createState() => _MyHomePageState();
}

class _MyHomePageState
    extends
        State<
          MyHomePage
        > {
  int _selectedIndex = 0;

  int _counter = 0;

  void _incrementCounter() {
    setState(
      () {
        _counter++;
      },
    );
  }

  // Daftar halaman
  final List<
    Widget
  >
  _pages = [
    const Center(
      child: Text(
        "Beranda",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    ),
    ProfilePage(),
    const Center(
      child: Text(
        "Halaman Aktivitas",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    ),
    const Center(
      child: Text(
        "Pengaturan",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    ),
  ];

  void _onItemTapped(
    int index,
  ) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(
          context,
        ).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "Google Sans",
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: "Aktivitas",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: "Pengaturan",
          ),
        ],
      ),
    );
  }
}

// Halaman Profile
class ProfilePage
    extends
        StatelessWidget {
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
                title: const Text(
                  "Data berhasil diubah!",
                ),
                content: const Text(
                  "Data telah disimpan.",
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(
                      context,
                    ).pop(),
                    child: const Text(
                      "Tutup",
                    ),
                  ),
                ],
              );
            },
      );
    }

    return Padding(
      padding: const EdgeInsets.all(
        25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Google Sans',
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    "Assets/Image/miyabu.png",
                  ),
                  radius: 71,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Nama",
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey,
            ),
          ),
          const Text(
            "Faris Daffa",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Alamat",
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey,
            ),
          ),
          const Text(
            "Mont Esus East",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "About Me",
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey,
            ),
          ),
          const Text(
            "About what?",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                255,
                18,
                120,
                203,
              ),
            ),
            onPressed: () => dialog(
              context,
            ),
            child: const Text(
              "Update Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
