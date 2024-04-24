import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Fruitslist(),
  ));
}

class Fruitslist extends StatelessWidget {
  var fruits = [
    'Apple',
    'Orange',
    'Mango',
    'Kiwi',
    "Banana",
    'WaterMelon',
    "Guava",
    'Grapes',
    'Blackberry',
    'Blueberry',
    'Papaya',
    'PassionFruit',
    'Peach'
  ];
  var fruitpics = [
    'assets/fruits/apple.jpg',
    'assets/fruits/orange.jpg',
    'assets/fruits/mango.jpg',
    'assets/fruits/kiwi.jpg',
    'assets/fruits/banana.jpg',
    'assets/fruits/watermelon.jpg',
    'assets/fruits/guava.jpg',
    'assets/fruits/grapes.jpg',
    'assets/fruits/blackberry.jpg',
    'assets/fruits/blueberry.jpg',
    'assets/fruits/papaya.jpg',
    'assets/fruits/passionfruit.jpg',
    'assets/fruits/peach.jpg'
  ];
  var unit = [
    'Kg',
    'Doz',
    'Doz',
    'Pc',
    'Doz',
    'Kg',
    'Pc',
    'Kg',
    'Kg',
    'Kg',
    'Kg',
    'Kg',
    'Kg',
  ];
  var price = [
    "80",
    "60",
    "120",
    "40",
    "20",
    "35",
    "15",
    "22",
    "32",
    "45",
    "35",
    "26",
    "45",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          width: 10,
        ),
        backgroundColor: Colors.yellow[400],
        title: Center(
            child: Text(
          "Fruit List",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        )),
        actions: [
          Icon(
            CupertinoIcons.cart_fill,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: List.generate(
            fruits.length,
            (index) => Container(
                height: 100,
                child: Card(
                  elevation: 3,
                  color: Colors.yellow[200],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            fruitpics[index],
                           
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text("Name: "),
                                Text(
                                  fruits[index],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Unit: "),
                                Text(
                                  unit[index],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Price: "),
                                Text(
                                  price[index],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.yellow[900],
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ))),
      ),
    );
  }
}