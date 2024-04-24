import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffcde0d5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/fruits/banana.jpg', 
                  width: 40,
                ),
                SizedBox(height: 20),
                Text(
                  '30 MINS POLICY',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/fruits/banana.jpg',
                  height: 40,
                ),
                SizedBox(height: 20),
                Text('TRACEABILITY', style: TextStyle(fontSize: 10)),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/fruits/banana.jpg', 
                  width: 40,
                ),
                SizedBox(height: 20),
                Text('LOCAL SOURCING', style: TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}