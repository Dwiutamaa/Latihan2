import 'package:flutter/material.dart';
import 'drawer_app.dart' as Drawer;
import 'detail_about.dart' as detail;
import 'produk_list.dart' as produk;
import 'ui/home.dart' as home;
import 'dart:ui';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.lightBlue[900],
      ),
      backgroundColor: Colors.lightBlue[200],
      drawer: Drawer.Menudrawer(),
      resizeToAvoidBottomInset: false,
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => produk.produk(),
              ));
            },
            child: ProductBox(nama: "Produk", gambar: "form.png"),
          ),
          Text(" ",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0)),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailMenu(
                  nama: "Tentang Aplikasi",
                  deskripsi:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  gambar: "about.png",
                ),
              ));
            },
            child: ProductBox(nama: "Tentang Aplikasi", gambar: "about.png"),
          ),
          Text(" ",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0)),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => home.Home(),
              ));
            },
            child: ProductBox(nama: "Form", gambar: "form.png"),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.nama, this.gambar}) : super(key: key);
  final String nama;
  final String gambar;

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
                          fontSize: 20.0,
                        )),
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
