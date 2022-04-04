import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello, 1915016048_Muchlis Mardais',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.menu,
          ),
        ),
        title: Text("Posttest 1 Muchlis Mardais"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.orangeAccent, Colors.blue])),
        ),
      ),
      body: Center(
          child: Container(
        width: lebar,
        height: tinggi,
        padding: EdgeInsets.all(12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 4.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gradient:
                LinearGradient(colors: [Colors.blue, Colors.orangeAccent]),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 2.0, offset: Offset(2.0, 2.0))
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'images/logo.png',
              height: tinggi - 300,
              width: lebar - 300,
            ),
            Text(
              "Praktikum Pemrograman Mobile Informatika",
              style: TextStyle(fontSize: 22, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )),
    );
  }
}
