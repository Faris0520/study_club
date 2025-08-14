import 'package:flutter/material.dart';

class detailProduk
    extends
        StatelessWidget {
  final String nama;
  final String harga;
  final String gambar;
  final String detail;

  const detailProduk({
    super.key,
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
          "Detail Pembelian",
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
                      gambar,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Divider(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      nama,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rp",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Google Sans",
                      color: Color.fromARGB(
                        255,
                        2,
                        132,
                        146,
                      ),
                    ),
                  ),
                  Text(
                    harga,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Google Sans",
                      color: Color.fromARGB(
                        255,
                        2,
                        132,
                        146,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Status",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Google Sans",
                ),
              ),
              Text(
                "Sedang Dikirim",
                style: TextStyle(
                  fontFamily: "Google Sans",
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
