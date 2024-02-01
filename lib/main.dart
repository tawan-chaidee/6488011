import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '6488011 Tawan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Adoption list")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Pinkaw Twin",
                description: "berry cute twin OwO",
                price: 0,
                image: "cat_1.jpg"),
            ProductBox(
                name: "Mongkut",
                description: "Ginger cat O-O",
                price: 0,
                image: "cat_2.png"),
            ProductBox(
                name: "Street Cat",
                description: "Fluffy furrious cat",
                price: 200,
                image: "cat_3.jfif"),
            ProductBox(
                name: "Cat4",
                description:
                    "Pluffy Pluffy!",
                price: -5000,
                image: "cat_4.png"),
            ProductBox(
                name: "Street Cat 2",
                description: "Roundy and fluflly UwU!",
                price: 200,
                image: "cat_5.jpg"),
            ProductBox(
                name: "Pup",
                description: "Odd looking cat",
                price: 3000,
                image: "cat_6.jfif"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
            Container(
              width: 240, 
              height: 240, 
              child: Image.asset(image, fit: BoxFit.cover),
            ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}
