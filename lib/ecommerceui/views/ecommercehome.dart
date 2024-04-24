import 'package:flutter/material.dart';
import 'package:login_page/ecommerceui/models/shoes.dart';
import 'package:login_page/ecommerceui/views/detailspage.dart';

class Echome extends StatelessWidget {
  Echome({super.key});

  List<Shoes> items = [
    Shoes(
        imageurl: 'assets/icons/nike1.jpg',
        title: 'nike air max 90',
        description: 'Womens shoes popular',
        rate: '\$150'),
    Shoes(
        imageurl: 'assets/icons/nike2.jpg',
        title: 'nike air max 70',
        description: 'Womens shoes popular',
        rate: '\$150'),
    Shoes(
        imageurl: 'assets/icons/nike3.jpg',
        title: 'nike air max 40',
        description: 'Womens shoes popular',
        rate: '\$150'),
    Shoes(
        imageurl: 'assets/icons/nike4.jpg',
        title: 'nike air max 20',
        description: 'Womens shoes popular',
        rate: '\$150'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'All shoes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
              bottom: TabBar(
                  indicatorColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(color: Colors.grey),
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: [
                    Text(
                      'All',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Lifestyle',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Jordan',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Running',
                      style: TextStyle(color: Colors.black),
                    ),
                  ]),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            //  mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            childAspectRatio:
                                (MediaQuery.of(context).size.width / 2.9) /
                                    (MediaQuery.of(context).size.height / 3.6),
                            crossAxisCount: 2),
                        itemBuilder: (context, index) => InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Detailspage(
                                          item: Shoes(
                                              imageurl: items[index].imageurl,
                                              title: items[index].title,
                                              description:
                                                  items[index].description,
                                              rate: items[index].rate)))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 300,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  items[index].imageurl),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Text(items[index].title),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(items[index].description),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(items[index].rate)
                                ],
                              ),
                            ))),
              ),
            )));
  }
}
