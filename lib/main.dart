import 'package:flutter/material.dart';
import 'profile.dart';
import 'home.dart';
import 'riwayat.dart';

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
      initialRoute: "/",
      routes: {
        '/':
            (
              context,
            ) => const Home(
              title: "",
            ),
        '/profile':
            (
              context,
            ) => Profile(
              title: 'Profile',
            ),
        '/riwayat':
            (
              context,
            ) => Riwayat(
              title: 'Riwayat',
            ),
      },
    );
  }
}
