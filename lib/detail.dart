import 'package:flutter/material.dart';

class detailProduk
    extends
        StatelessWidget {
  final String nama;
  final String harga;
  final String Gambar;
  final String detail;

  const detailProduk({
    required this.nama,
    required this.harga,
    required this.Gambar,
    required this.detail,
  });
    
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(
            20,
          ),
          child: Column(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      Gambar,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      nama,
                    ),
                  ],
                ),
              ),
              Text(
                harga.toString(),
              ),
              Text(
                detail,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
