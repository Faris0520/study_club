import 'package:flutter/material.dart';

void
main() {
  runApp(
    MyApp(), 
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
          seedColor: Color.fromARGB(
            255,
            7,
            204,
            234,
          ),
        ),
      ),
      home: MyHomePage(
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

// Helper method to build action buttons
Widget _buildActionButton(IconData icon, String label, VoidCallback onPressed) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: Colors.blue[700], size: 24),
      ),
      SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontFamily: 'Google Sans',
        ),
      ),
    ],
  );
}

// Helper method to build event cards
Widget _buildEventCard(String title, String time, String location, Color color) {
  return Card(
    elevation: 2,
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: color,
            width: 4,
          ),
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Google Sans',
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.access_time, size: 16, color: Colors.grey[600]),
                SizedBox(width: 4),
                Text(
                  time,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey[600]),
                SizedBox(width: 4),
                Text(
                  location,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ],
        ),
        trailing: Icon(Icons.chevron_right, color: Colors.grey[600]),
        onTap: () {},
      ),
    ),
  );
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
    SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with welcome message
            Text(
              'Halo, Faris!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Google Sans',
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Apa yang ingin kamu lakukan hari ini?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                fontFamily: 'Google Sans',
              ),
            ),
            SizedBox(height: 24),
            
            // Quick Actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildActionButton(Icons.assignment, 'Tugas', () {}),
                _buildActionButton(Icons.calendar_today, 'Jadwal', () {}),
                _buildActionButton(Icons.group, 'Grup', () {}),
                _buildActionButton(Icons.settings, 'Pengaturan', () {}),
              ],
            ),
            
            SizedBox(height: 32),
            
            // Upcoming Events
            Text(
              'Kegiatan Mendatang',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Google Sans',
              ),
            ),
            SizedBox(height: 16),
            _buildEventCard(
              'Studi Kelompok Matematika',
              'Hari ini, 14.00 - 16.00',
              'Ruang 301',
              Colors.blue[100]!,
            ),
            SizedBox(height: 12),
            _buildEventCard(
              'Diskusi Proyek Akhir',
              'Besok, 10.00 - 12.00',
              'Ruang Lab Komputer',
              Colors.green[100]!,
            ),
            
            SizedBox(height: 24),
            
            // Quick Notes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Catatan Cepat',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Google Sans',
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Lihat Semua'),
                ),
              ],
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Tulis catatanmu di sini...',
                        border: InputBorder.none,
                      ),
                      maxLines: 3,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 18, 120, 203),
                          foregroundColor: Colors.white,
                        ),
                        child: Text('Simpan'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    ProfilePage(),
    Center(
      child: Text(
        "Halaman Aktivitas",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    ),
    Center(
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
          style: TextStyle(
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
        items: [
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
  const ProfilePage({super.key});

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
                  "Berhasil",
                ),
                content: Text(
                  "Data berhasil disimpan.",
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(
                      context,
                    ).pop(),
                    child: Text(
                      "Tutup",
                    ),
                  ),
                ],
              );
            },
      );
    }

    return Padding(
      padding: EdgeInsets.all(
        25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Google Sans',
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "Assets/Image/skir.jpg",
                  ),
                  radius: 71,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
            height: 20,
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
            height: 20,
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
            height: 20,
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
              backgroundColor: Color.fromARGB(
                255,
                18,
                120,
                203,
              ),
            ),
            onPressed: () => dialog(
              context,
            ),
            child: Text(
              "Update Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
