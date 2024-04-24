import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview2(),
  ));
}

class Listview2 extends StatelessWidget {

  var pic=[
    'assets/icons/delhi.jpg',
    'assets/icons/finland.jpg',
    'assets/icons/london.jpg',
    'assets/icons/nyc.jpg',
     'assets/icons/mumbai.jpg',
     'assets/icons/tokyo.jpg',
     'assets/icons/mexico.jpg',
    'assets/icons/barca.jpg',
    'assets/icons/liverpool.jpg',
    'assets/icons/russia.jpg',
  ];
   var cities = [
    'Delhi',
    'Finland',
    'London',
    'New York',
    'Mumbai',
    'Tokyo',
    'MexicoCity',
    'Barcelona',
    'Liverpool',
    'Russia city'
  ];
   var country = [
    'India',
    'Europe',
    'UK',
    'USA',
    'India',
    'Japan',
    'Mexico',
    'Spain',
    'UK',
    'Russia',
  ];
   var population = [
    'Population : 32.9 mill',
    'Population : 5.54 mill',
    'Population : 8.8 mill',
    'Population : 19.6 mill',
    'Population : 22 mill',
    'Population : 40.8 mill',
    'Population : 21.6 mill',
    'Population : 16.2 mill',
    'Population : 8.8 mill',
    'Population : 14.3 mill',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("cities in world"),
          ),
        ),
        body: ListView(
          children: List.generate(
              cities.length,
              (index) => Container(
                    height: 150,
                    child: Card(
                      color: Colors.amber,
                      elevation: 3,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 200,
                            height: 200,
                            child: Image.asset(
                            pic[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                              cities[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                              country[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                               population[index],
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ))),
    );
  }
}
