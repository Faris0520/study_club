import 'package:flutter/material.dart';

class detailProduk
    extends
        StatelessWidget {
  final String nama;
  final String harga;
  final String gambar;
  final String detail;

  const detailProduk({super.key, 
    required this.nama,
    required this.harga,
    required this.gambar,
    required this.detail,
  });
    
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Produk",
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network(
                      gambar,
                      width: 400,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Text(
                      nama,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Rp",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 132, 146),
                    ),
                  ),
                  Text(
                    harga,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 132, 146),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(height: 10),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Deskripsi:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      detail,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
