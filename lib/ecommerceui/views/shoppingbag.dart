import 'package:flutter/material.dart';
import 'package:login_page/ecommerceui/views/checkout.dart';

class Shoppingbag extends StatelessWidget {
  const Shoppingbag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'shopping bag',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/nike3.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nike air 07'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Size:8'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('\$150')
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.minimize),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('subtotal'), Text('\$150')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('total'), Text('\$150')],
              ),
            ),
            SizedBox(
              height: 350,
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Checkout())),
              child: Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  'Checkouts',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18, 
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
