import 'package:flutter/material.dart';
import 'package:login_page/ecommerceui/models/shoes.dart';

class Favoritepage extends StatelessWidget {
 

   List<Shoes> items = [
    Shoes(
        imageurl: 'assets/icons/nike1.jpg',
        title: 'nike air max 90',
        description: 'Womens shoes popular',
        rate: '\$150'),
         Shoes(
        imageurl: 'assets/icons/nike2.jpg',
        title: 'nike air max 90',
        description: 'Womens shoes popular',
        rate: '\$150'),
         Shoes(
        imageurl: 'assets/icons/nike3.jpg',
        title: 'nike air max 90',
        description: 'Womens shoes popular',
        rate: '\$150'),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('favorite',style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body:  SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: items.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        //  mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          childAspectRatio: (MediaQuery.of(context).size.width/2.9)/(MediaQuery.of(context).size.height/3.6),
                            crossAxisCount: 2),
                        itemBuilder: (context, index) => Column(
                          mainAxisAlignment: MainAxisAlignment.start, 
                          children: [
                            Card(
                              child: Container(
                                width: 300,
                                height: 150, 
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image: AssetImage(items[index].imageurl),fit: BoxFit.cover)),
                              
                              ),
                            ),
                              Text(items[index].title),
                              SizedBox(height: 10,),
                              Text(items[index].description),
                                  SizedBox(height: 10,), 
                              Text(items[index].rate)
                          ],
                        ))),
              ),
            )
    );
  }
}
