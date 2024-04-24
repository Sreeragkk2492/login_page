import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Shaker(),
  ));
}

class Shaker extends StatelessWidget {
  const Shaker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gridview shaker "),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.mic,size: 40,color: Colors.blue[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.zoom_out_map,size: 40,color: Colors.orange[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.linked_camera,size: 40,color: Colors.green[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.bookmark_add,size: 40,color: Colors.pink[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.more,size: 40,color: Colors.red[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.access_alarm,size: 40,color: Colors.blue[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.contact_emergency,size: 40,color: Colors.purple[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green[700],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.home,size: 40,color: Colors.green[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.speaker,size: 40,color: Colors.yellow[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange[700],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.gradient_rounded,size: 40,color: Colors.orange[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(Icons.mic_off,size: 40,color: Colors.pink[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Icon(CupertinoIcons.plus_square_fill,size: 40,color: Colors.green[900],),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  20),),
                          Text("Shaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      )
                    ],),
                  ),
                ),

              ]),
        ));
  }
}