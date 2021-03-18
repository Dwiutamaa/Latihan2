import 'package:flutter/material.dart';
import 'detail_produk.dart';

class produk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hotel List")),
      backgroundColor: Colors.lightBlue[200],
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Hotel Panpasific",
                  deskripsi:
                      "Hotel Panpasific adalah hotel yang berlokasi di Bali dengan fasilitas golf pribadi, pantai pribadi hingga memiliki hallypet yang dimiliki oleh hotel tersebut.",
                  harga: 500000,
                  gambar: "hotel1.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                nama: "Hotel Panpasific",
                deskripsi:
                    "Lokasi : Tabanan,Bali.",
                harga: 500000,
                gambar: "hotel1.jpg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Hotel Boruto",
                  deskripsi:
                      "Hotel yang berlokasi di Jepang yang berada tepat di titik kota Tokyo, hotel ini memiliki posisi kedua terbaik di Kota Tokyo Jepang.",
                  harga: 900000,
                  gambar: "hotel2.jpg",
                  star: 3,
                ),
              ));
            },
            child: ProductBox(
                nama: "Hotel Boruto",
                deskripsi:
                    "Lokasi : Tokyo,Jepang.",
                harga: 900000,
                gambar: "hotel2.jpg",
                star: 3),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Hotel Kartika Plaza",
                  deskripsi:
                      "Hotel yang berlokasi di Kota Badung,Bali, Hotel dengan fasilitas yang lengkap dan lokasi yang sangat strategis dan dekat dengan Pantai Jimbaran.",
                  harga: 600000,
                  gambar: "hotel3.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                nama: "Hotel Kartika Plaza",
                deskripsi:
                    "Lokasi : Badung,Bali.",
                harga: 600000,
                gambar: "hotel3.jpg",
                star: 1),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Hotel Bedugul",
                  deskripsi:
                      "Berlokasi di Kabupaten Tabanan yang terletak di Perbukitan BedugulDengan lokasi di perbukitan, membuat lingkungan Hotel Bedugul memiliki udara yang dingin dan segar.",
                  harga: 200000,
                  gambar: "hotel4.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                nama: "Hotel Bedugul",
                deskripsi:
                    "Lokasi : Tabanan,Bali.",
                harga: 200000,
                gambar: "hotel4.jpg",
                star: 4),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Hotel Sentral",
                  deskripsi:
                      "Berlokasi di titik Kota Singaraja, yang memiliki fasilitas yang baik. Hotel ini memiliki akses yang mudah, untuk rumah sakit, pantai, dan taman.",
                  harga: 300000,
                  gambar: "hotel5.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                nama: "Hotel Sentral",
                deskripsi:
                    "Lokasi : Singaraja,Bali",
                harga: 300000,
                gambar: "hotel5.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[700],
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimages/" + gambar,
              width: 150,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.deskripsi),
                    Text(
                      "Harga: " + this.harga.toString(),
                      style: TextStyle(color: Colors.lightBlue.shade900),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
