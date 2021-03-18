import 'package:flutter/material.dart';
import 'detail_about.dart'as detail;

class Menudrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //widget drawer
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            //bagian header pada drawer
            accountName: Text("Dwi Utama"),
            accountEmail: Text("dwiutama520@gmail.com"),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/appimages/"),
              ),
            ),
            decoration: BoxDecoration(color: Colors.lightBlue[900]), // mewarnai background drawer
          ),
          ListTile(
            //widget untuk drawer di bagian list tilenya
            onTap: () {},
            title: Text("Profil"),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            onTap: () {},
            title: Text("Pengaturan"),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailMenu(
                  nama: "Tentang Aplikasi Penjualan Minuman",
                  deskripsi:
                       "Aplikasi ini berfungsi sebagai media yang mempermudah pengguna dalam memilih, maupum memesan hotel, dengan menampilkan rating dan lokasi hotel-hotel didalam apliksai ini",
                  gambar: "about.png",
                ),
              ));
            },
            title: Text("Tentang Aplikasi"),
            trailing: Icon(Icons.help),
          ),
          ListTile(
            onTap: () {},
            title: Text("Keluar"),
            trailing: Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
