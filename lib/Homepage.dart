
import 'dart:ui';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/HexColor.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: ', style: optionStyle,),
    Text('Index 1:', style: optionStyle,),
    Text('Index 2:'' ', style: optionStyle,),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: HexColor("#1F2137"),
      //Center(child: _widgetOptions.elementAt(_selectedIndex),),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: HexColor("#050B18"),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_sharp,size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined,color: Colors.white12,size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,color: Colors.white12,size: 30),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: HexColor("#6249DE"),
        onTap: _onItemTapped,
      ),

      appBar: AppBar(
        backgroundColor: HexColor("#2B2D47"),
        leading: Stack(children:[
          IconButton(icon: Icon(Icons.account_circle_outlined,color: HexColor("#7560E3"),), onPressed: () {}),
          Positioned(
            top: 15,
            right: 17,
            child:
            CircleAvatar(
              radius: 16.0,
              backgroundColor: HexColor("#6249DE"),
              foregroundColor: HexColor("#6249DE"),

              child: ClipRRect(
                child: Image.asset('images/john.jpg'),
                borderRadius: BorderRadius.circular(50.0,),
              ),
            ),
            //Image.asset("images/john.jpg",scale: 1,height: 20,width: 30,),
          ),
        ],
    ),
        title: Text("John",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,fontFamily: "Josefin Sans"),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search_outlined, size: 30,
              color: HexColor("#7560E3"),),),
         Stack(children: [
           IconButton(icon: Icon(EvaIcons.bellOutline,color: HexColor("#7560E3"),), onPressed: () {}),
           Positioned(
             top: 14,
             right: 12,
             child:Image.asset("images/e1.png",),
           ),
        ],

         )
        ],
      ),
      body:

      SingleChildScrollView(

        child:
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 345,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color:HexColor("#1F2137"),),
                  child:Column(
                    children: [
                      SizedBox(width: 37,height: 20,),
                      Row(
                        children: [
                          Text("     Popular",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,
                              fontFamily: "Josefin Sans",color: HexColor("#7560E3")),),
                        ],
                      ),
                      SizedBox(height: 10, width: 36,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0,right: 10.0),
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              Column(
                                children: [

                                  Container(
                                      padding: EdgeInsets.only(top: 0,right: 0,left: 0,bottom: 0),
                                      height: 214,
                                      width: 215,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Stack(
                                        children: [

                                          Positioned(
                                              child:
                                              //Image.asset("images/image3.jpg")
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(10.0),
                                                child: Image.asset("images/image3.jpg",

                                                  //height: 300,
                                                 // width: 159.0,
                                                ),
                                              )
                                          ),

                                          Positioned(
                                              bottom: 0,
                                              child:Container(
                                                width: 214,
                                                height: 55,
                                                decoration: BoxDecoration(color: HexColor("#2B2D47"),
                                                  borderRadius: BorderRadius.only(
                                               bottomLeft: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)
                                                  ),),
                                              )

                                          ),
                                          Positioned(
                                          top: 73,
                                            right: 7,
                                            child:Icon(
                                                Icons.arrow_forward_ios,
                                                size: 25,color: Colors.white
                                            ),
                                          ),
                                          Positioned(
                                            top: 73,
                                           left: 10,
                                            child:Icon(
                                                Icons.arrow_back_ios_outlined,
                                                size: 25,color: Colors.white
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 22,
                                            right: 20,
                                            child:Icon(
                                              Icons.favorite_border,
                                              size: 25,color: HexColor("#6249DE")
                                            ),
                                          ),

                                          Positioned(
                                              bottom: 23,
                                              left: 10,
                                              child: Text(
                                                  "FarCry 6",
                                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white
                                                       ),),)
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                              SizedBox(width: 32,),

                              Column(
                                children: [
                                  SizedBox(width: 27,),
                                  Container(
                                    padding: EdgeInsets.only(top: 0,right: 0,left: 0,bottom: 0),
                                    height: 214,
                                    width: 272,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            child:
                                            //Image.asset("images/image3.jpg")
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(10.0),
                                              child: Image.asset("images/image2.jpg",),
                                            )
                                        ),
                                        Positioned(
                                            bottom: 0,
                                            child:Container(
                                              width: 214,
                                              height: 55,
                                              decoration: BoxDecoration(color: HexColor("#2B2D47"),
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)
                                                ),),
                                            )

                                        ),
                                        Positioned(
                                          top: 73,
                                          right: 70,
                                          child:Icon(
                                              Icons.arrow_forward_ios,
                                              size: 25,color: Colors.white
                                          ),
                                        ),
                                        Positioned(
                                          top: 73,
                                          left: 10,
                                          child:Icon(
                                              Icons.arrow_back_ios_outlined,
                                              size: 25,color: Colors.white
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 22,
                                          right: 70,
                                          child:Icon(
                                              Icons.favorite_border,
                                              size: 25,color: HexColor("#6249DE")
                                          ),
                                        ),

                                        Positioned(
                                          bottom: 23,
                                          left: 10,
                                          child: Text(
                                            "FarCry 6",
                                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white
                                            ),),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding:EdgeInsets.symmetric(horizontal:0.0),
                        child:Container(
                          height:1.0,
                          width: MediaQuery.of(context).size.width,
                          color:Colors.white,),),
                      SizedBox(height: 10,width: 37,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                            padding: const EdgeInsets.only(left:10.0,right: 10.0),
                            child: Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Column(
                                      children: [
                                       Container(
                                         width: 49,
                                         height: 22,
                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                             color: HexColor("#6249DE")),
                                       child:  Center(child: Text("All",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                       )
                                      ]
                                  ),
                                  SizedBox(width: 8,),
                                  Column(mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 90,
                                          height: 22,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                              color: HexColor("#2B2D47")),
                                          child:  Center(child: Text("PlayStation",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                        )
                                      ]
                                  ),
                                  SizedBox(width: 8,),
                                  Column(mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 79.5,
                                          height: 22,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                              color: HexColor("#2B2D47")),
                                          child:  Center(child: Text("Nintendo",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                        )
                                      ]
                                  ),
                                  SizedBox(width: 8,),
                                  Column(mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 56.25,
                                          height: 22,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                              color: HexColor("#2B2D47")),
                                          child:  Center(child: Text("X-Box",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                        )
                                      ]
                                  ), SizedBox(width: 8,),
                                  Column(mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 50.63,
                                          height: 22,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                              color: HexColor("#2B2D47")),
                                          child:  Center(child: Text("PC",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                        )
                                      ]
                                  ), SizedBox(width: 8,),
                                  Column(mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 62.8,
                                          height: 22,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                              color: HexColor("#2B2D47")),
                                          child:  Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                        )
                                      ]
                                  ),
                                ]
                            ),
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                      )
                  ),

              ],
            ),
            SizedBox(width: 5,),
      SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
          padding: const EdgeInsets.only(left:10.0,right: 10.0),
          child: Row(
            children: [
              SizedBox(width: 20,),
              Column(
                  children: [
                    Container(
                      width: 68,
                      height: 33,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: HexColor("#2B2D47")),
                      child:  Stack(
                        children: [
                          Positioned(
                            top: 8,
                            right: 15,
                            child:Text("All",style: TextStyle(color: Colors.white,fontSize: 12),),),
                          Positioned(
                            top: 8,
                            right: 34,
                            child:Image.asset("images/v8.png",),
                          ),
                        ],
                    ),
                    )
                  ]
              ),
              SizedBox(width: 8,),
              Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 84,
                      height: 33,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: HexColor("#2B2D47")),
                      child:  Stack(
                        children: [
                        Positioned(
                          top: 8,
                          right: 15,
                          child:Text("Action",style: TextStyle(color: Colors.white,fontSize: 12),)),
                        Positioned(
                          top: 8,
                          right: 57,
                          child:Image.asset("images/v9.png",),
                        ),
                      ],
                    ),
                    )
                  ]
              ),
              SizedBox(width: 8,),
              Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 102,
                      height: 33,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: HexColor("#2B2D47")),
                      child:  Stack(
                          children: [
                            Positioned(
                                top: 8,
                                right: 15,
                                child:Text("Adventure",style: TextStyle(color: Colors.white,fontSize: 12),)),
                            Positioned(
                              top: 8,
                              right: 77,
                              child:Image.asset("images/v11.png",),
                            ),
                          ],
                      )
                    )
                  ]
              ),
              SizedBox(width: 8,),
              Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 84,
                      height: 33,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: HexColor("#2B2D47")),
                      child:  Stack(
                          children: [
                            Positioned(
                                top: 8,
                                right: 15,
                                child:Text("Puzzle",style: TextStyle(color: Colors.white,fontSize: 12),)),
                            Positioned(
                              top: 5,
                              right: 52,
                              child:Icon(
                                  Icons.web,
                                 color: Colors.pink
                              ),
                            ),
                          ],
                      )
                    )
                  ]
              ),
            ],
          )


      ),
    ),
            SizedBox(height: 20,
            width: 37,),
            Row(
              children: [
                SizedBox(width: 37,),
                Text("Today",style: TextStyle(fontSize: 23,color: HexColor("#7560E3"),fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10,width: 35,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10.0),
                child: Row(

                  children: [
                    SizedBox(width: 25,),
                    Column(
                      children: [
                        SizedBox(width: 37,),
                        Container(
                          padding: EdgeInsets.only(top: 0,right: 0,left: 0,bottom: 0),
                          height: 316,
                          width: 352,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  child:
                                  //Image.asset("images/image3.jpg")
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)
                                    ),
                                    child: Image.asset("images/cry.png",),
                                  )
                              ),
                              Positioned(
                                  bottom: 0,
                                  child:Container(
                                    width: 352,
                                    height: 157,
                                    decoration: BoxDecoration(color: HexColor("#2B2D47"),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)
                                      ),),
                                  )

                              ),
                              Positioned(
                                bottom:80,
                                left:19,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 104,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                          children: [
                                            Positioned(
                                                top: 8,
                                                right: 13,
                                                child:Text("12 Feb 2021",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                            Positioned(
                                              top: 4,
                                              right: 79,
                                              child:Icon(
                                                Icons.calendar_today_outlined,
                                                color: Colors.indigo,size: 19,
                                              ),
                                            ),
                                          ],

                                        ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                bottom:80,
                                left:130,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 84,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                              children: [
                                                Positioned(
                                                    top: 7,
                                                    right: 15,
                                                    child:Text("Action",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                                Positioned(
                                                  top: 6,
                                                  right: 57,
                                                  child:Image.asset("images/v9.png",),
                                                ),
                                              ],
                                            ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                bottom:80,
                                left:220,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:103,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                            children: [
                                              Positioned(
                                                  top: 7,
                                                  right: 15,
                                                  child:Text("Adventure",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                              Positioned(
                                                top: 6,
                                                right: 77,
                                                child:Image.asset("images/v11.png",),
                                              ),
                                            ],
                                           ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                               top:180,
                                right: 20,
                                child:Icon(
                                    Icons.favorite_border,
                                    size: 25,color: HexColor("#6249DE"),
                                ),
                              ),
                              Positioned(
                               bottom:40,
                                left:100,
                                child: Image.asset("images/v1.png",),
                              ),
                              Positioned(
                                bottom:40,
                                left:130,
                                child: Image.asset("images/v2.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:160,
                                child: Image.asset("images/v3.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:195,
                                child: Image.asset("images/v4.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:230,
                                child: Image.asset("images/v5.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:260,
                                child: Image.asset("images/v6.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:297,
                                child: Image.asset("images/v7.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left: 22,
                                child:
                                 Text(" Download",style:TextStyle(fontSize: 12,color: Colors.grey),)
                              ),

                              Positioned(
                                top: 180,
                                left: 19,
                                child: Text(
                                  " FarCry 6",
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white
                                  ),),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10.0),
                child: Row(

                  children: [
                    SizedBox(width: 25,),
                    Column(
                      children: [
                        SizedBox(width: 37,),
                        Container(
                          padding: EdgeInsets.only(top: 0,right: 0,left: 0,bottom: 0),
                          height: 316,
                          width: 352,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  child:
                                  //Image.asset("images/image3.jpg")
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)
                                    ),
                                    child: Image.asset("images/rider.png",),
                                  )
                              ),
                              Positioned(
                                  bottom: 0,
                                  child:Container(
                                    width: 352,
                                    height: 157,
                                    decoration: BoxDecoration(color: HexColor("#2B2D47"),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)
                                      ),),
                                  )

                              ),
                              Positioned(
                                bottom:80,
                                left:19,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 104,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                          children: [
                                            Positioned(
                                                top: 7,
                                                right: 13,
                                                child:Text(" 12 Feb 2021",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                            Positioned(
                                              top: 4,
                                              right: 79,
                                              child:Icon(
                                                Icons.calendar_today_outlined,
                                                color: Colors.indigo,size: 19,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                bottom:80,
                                left:130,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 84,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                            color: HexColor("#1F2137")),
                                        child:  Stack( children: [
                                          Positioned(
                                              top: 7,
                                              right: 15,
                                              child:Text("Action",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                          Positioned(
                                            top: 6,
                                            right: 57,
                                            child:Image.asset("images/v9.png",),
                                          ),
                                        ],
                                        ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                bottom:80,
                                left:220,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:103,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                            children: [
                                              Positioned(
                                                  top: 7,
                                                  right: 15,
                                                  child:Text("Adventure",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                              Positioned(
                                                top: 6,
                                                right: 77,
                                                child:Image.asset("images/v11.png",),
                                              ),
                                            ],
                                           ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                top:180,
                                right: 20,
                                child:Icon(
                                  Icons.favorite_border,
                                  size: 25,color: HexColor("#6249DE"),
                                ),
                              ),
                              Positioned(
                                bottom:40,
                                left:100,
                                child: Image.asset("images/v1.png",),
                              ),
                              Positioned(
                                bottom:40,
                                left:130,
                                child: Image.asset("images/v2.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:160,
                                child: Image.asset("images/v3.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:195,
                                child: Image.asset("images/v4.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:230,
                                child: Image.asset("images/v5.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:260,
                                child: Image.asset("images/v6.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:297,
                                child: Image.asset("images/v7.png"),
                              ),
                              Positioned(
                                  bottom:40,
                                  left: 22,
                                  child:
                                  Text(" Download",style:TextStyle(fontSize: 12,color: Colors.grey),)
                              ),

                              Positioned(
                                top: 180,
                                left: 19,
                                child: Text(
                                  " FarCry 6",
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white
                                  ),),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ),
            SizedBox(height: 20,
              width: 37,),
            Row(
              children: [
                SizedBox(width: 37,),
                Text("This Week",style: TextStyle(fontSize: 23,color: HexColor("#7560E3"),fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10,width: 35,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10.0),
                child: Row(

                  children: [
                    SizedBox(width: 25,),
                    Column(
                      children: [
                        SizedBox(width: 37,),
                        Container(
                          padding: EdgeInsets.only(top: 0,right: 0,left: 0,bottom: 0),
                          height: 316,
                          width: 352,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  child:
                                  //Image.asset("images/image3.jpg")
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)
                                    ),
                                    child: Image.asset("images/cry.png",),
                                  )
                              ),
                              Positioned(
                                  bottom: 0,
                                  child:Container(
                                    width: 352,
                                    height: 157,
                                    decoration: BoxDecoration(color: HexColor("#2B2D47"),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)
                                      ),),
                                  )

                              ),
                              Positioned(
                                bottom:80,
                                left:19,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 104,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                            children: [
                                              Positioned(
                                                  top: 8,
                                                  right: 13,
                                                  child:Text("12 Feb 2021",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                              Positioned(
                                                top: 4,
                                                right: 79,
                                                child:Icon(
                                                    Icons.calendar_today_outlined,
                                                    color: Colors.indigo,size: 19,
                                                ),
                                              ),
                                            ],
                                        ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                bottom:80,
                                left:130,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 84,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                            children: [
                                              Positioned(
                                                  top: 7,
                                                  right: 15,
                                                  child:Text("Action",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                              Positioned(
                                                top: 6,
                                                right: 57,
                                                child:Image.asset("images/v9.png",),
                                              ),
                                            ],
                                        ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                bottom:80,
                                left:220,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:103,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                            children: [
                                              Positioned(
                                                  top: 7,
                                                  right: 15,
                                                  child:Text("Adventure",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                              Positioned(
                                                top: 6,
                                                right: 77,
                                                child:Image.asset("images/v11.png",),
                                              ),
                                            ],
                                            ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                top:180,
                                right: 20,
                                child:Icon(
                                  Icons.favorite_border,
                                  size: 25,color: HexColor("#6249DE"),
                                ),
                              ),
                              Positioned(
                                bottom:20,
                                left:100,
                                child: Image.asset("images/v1.png",),
                              ),
                              Positioned(
                                bottom:20,
                                left:130,
                                child: Image.asset("images/v2.png"),
                              ),
                              Positioned(
                                bottom:20,
                                left:160,
                                child: Image.asset("images/v3.png"),
                              ),
                              Positioned(
                                bottom:20,
                                left:195,
                                child: Image.asset("images/v4.png"),
                              ),
                              Positioned(
                                bottom:20,
                                left:230,
                                child: Image.asset("images/v5.png"),
                              ),
                              Positioned(
                                bottom:20,
                                left:260,
                                child: Image.asset("images/v6.png"),
                              ),
                              Positioned(
                                bottom:20,
                                left:297,
                                child: Image.asset("images/v7.png"),
                              ),
                              Positioned(
                                  bottom:20,
                                  left: 22,
                                  child:
                                  Text(" Download",style:TextStyle(fontSize: 12,color: Colors.grey),)
                              ),
                              Positioned(
                                bottom:45,
                                left:19,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 86.5,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                            children: [
                                              Positioned(
                                                  top: 8,
                                                  right: 15,
                                                  child:Text("30% OFF",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                              Positioned(
                                                top: 8,
                                                right: 67,
                                                child:Image.asset("images/v10.png",),
                                              ),
                                            ],
                                        )
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                top: 180,
                                left: 19,
                                child: Text(
                                  " FarCry 6",
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white
                                  ),),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10.0),
                child: Row(

                  children: [
                    SizedBox(width: 25,),
                    Column(
                      children: [
                        SizedBox(width: 37,),
                        Container(
                          padding: EdgeInsets.only(top: 0,right: 0,left: 0,bottom: 0),
                          height: 316,
                          width: 352,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  child:
                                  //Image.asset("images/image3.jpg")
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)
                                    ),
                                    child: Image.asset("images/rider.png",),
                                  )
                              ),
                              Positioned(
                                  bottom: 0,
                                  child:Container(
                                    width: 352,
                                    height: 157,
                                    decoration: BoxDecoration(color: HexColor("#2B2D47"),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)
                                      ),),
                                  )

                              ),
                              Positioned(
                                bottom:80,
                                left:19,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 104,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                          children: [
                                            Positioned(
                                                top: 8,
                                                right: 13,
                                                child:Text(" 12 Feb 2021",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                            Positioned(
                                              top: 4,
                                              right: 79,
                                              child:Icon(
                                                Icons.calendar_today_outlined,
                                                color: Colors.indigo,size: 19,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                bottom:80,
                                left:130,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 84,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                            children: [
                                              Positioned(
                                                  top: 7,
                                                  right: 15,
                                                  child:Text("Action",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                              Positioned(
                                                top: 6,
                                                right: 57,
                                                child:Image.asset("images/v9.png",),
                                              ),
                                            ],
                                            ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                bottom:80,
                                left:220,
                                child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:103,
                                        height: 27,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                            color: HexColor("#1F2137")),
                                        child:  Stack(
                                            children: [
                                              Positioned(
                                                  top: 7,
                                                  right: 15,
                                                  child:Text("Adventure",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                              Positioned(
                                                top: 6,
                                                right: 77,
                                                child:Image.asset("images/v11.png",),
                                              ),
                                            ],
                                           ),
                                      )
                                    ]
                                ),
                              ),
                              Positioned(
                                top:180,
                                right: 20,
                                child:Icon(
                                  Icons.favorite_border,
                                  size: 25,color: HexColor("#6249DE"),
                                ),
                              ),
                              Positioned(
                                bottom:40,
                                left:100,
                                child: Image.asset("images/v1.png",),
                              ),
                              Positioned(
                                bottom:40,
                                left:130,
                                child: Image.asset("images/v2.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:160,
                                child: Image.asset("images/v3.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:195,
                                child: Image.asset("images/v4.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:230,
                                child: Image.asset("images/v5.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:260,
                                child: Image.asset("images/v6.png"),
                              ),
                              Positioned(
                                bottom:40,
                                left:297,
                                child: Image.asset("images/v7.png"),
                              ),
                              Positioned(
                                  bottom:40,
                                  left: 22,
                                  child:
                                  Text(" Download",style:TextStyle(fontSize: 12,color: Colors.grey),)
                              ),

                              Positioned(
                                top: 180,
                                left: 19,
                                child: Text(
                                  " FarCry 6",
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white
                                  ),),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ),
            SizedBox(height: 20,),


          ],
        ),



      ),


    );
  }
}
