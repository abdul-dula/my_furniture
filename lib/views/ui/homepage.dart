import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_furniture/views/shared/app_info_list.dart';
import 'package:my_furniture/views/shared/appstyle.dart';

import '../shared/applayout.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key, }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 6, vsync: this);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    final Map<String, dynamic> armchair;
    List<String> Armchair =[
      'assets/green_chair.png',
      'assets/white_sofa.png',
      'assets/yellow_sofa.png',
    ];
    List <String> Table =[
      'assets/woody_coffee_table.png',
      'assets/white_coffee_table.png',
    ];

    List <String> livingroom=[
      'assets/gray_cabinet.png',
      'assets/floor_lamp.png',
      'assets/woody_cabinet.png',
    ];
    List <String> outdoorFurniture=[
         'assets/gray_outdoor_chair.png',
          'assets/hanging_chair.png',
          'assets/outdoor_table.png',
          'assets/outdoor_chair.png',
    ];
    List <String> Kitchen=[
      'assets/black_coffee_server.png',
      'assets/coffee_set_decorated.png',
      'assets/white_mug.png',
      'assets/tea_set_decorated.png',
      'assets/green_coffee_server.png',
    ];

    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: SizedBox(
          //height: AppLayout.getScreenHeight(),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 22), //التلاعب في المسافه بين الكتابه والصوره
                child: Column(
                  children: [
                    const Gap(60), // المسافه العاموديه الي بين الجمله و فوق
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, //خلق المسافه بين الكتابه والصوره
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start, //
                          children: [
                            Text(
                              "FIND FURNITURE",
                              style: Styles.headLineStyle1,
                            ),
                            const Gap(5),
                            Text(
                              "BEST FOR YOUR",
                              style: Styles.headLineStyle3,
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 62,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                      "assets/myfurniture_logo.png"))),
                        ),
                      ],
                    ),
                    const Gap(25), // or we can use "SizedBox (height: 25,)"
                    TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
                          color: Styles.primaryColor,
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Colors.white,
                        labelStyle: Styles.headLineStyle3,
                        unselectedLabelColor: Styles.primaryColor,
                        labelPadding: EdgeInsets.symmetric(horizontal: 10),
                        tabs: <Widget>[
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11,vertical: 6),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Styles.primaryColor, width: 2.5),
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 1.5),
                                        child: const FittedBox(
                                          child: ImageIcon(
                                            AssetImage("lib/icons/armchair.png"),
                                            size: 55,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                       Text(
                                         "Armchair",
                                       ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11,vertical: 6),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Styles.primaryColor, width: 2.5),
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 1.5),
                                        child: const FittedBox(
                                          child: ImageIcon(
                                            AssetImage("lib/icons/Table.png"),
                                            size: 55,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                       Text(
                                         "Table",
                                       ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11,vertical: 6),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Styles.primaryColor, width: 2.5),
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 1.5),
                                        child: const FittedBox(
                                          child: ImageIcon(
                                            AssetImage("lib/icons/livingroom.png"),
                                            size: 90,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                       Text(
                                         "Livingroom",
                                       ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11,vertical: 6),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Styles.primaryColor, width: 2.5),
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 1.5),
                                        child: const FittedBox(
                                          child: ImageIcon(
                                            AssetImage("lib/icons/kitchen.png"),
                                            size: 55,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Kitchen",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11,vertical: 6),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Styles.primaryColor, width: 2.5),
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 1.5),
                                        child: const FittedBox(
                                          child: ImageIcon(
                                            AssetImage("lib/icons/bed.png"),
                                            size: 55,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                       Text(
                                         "Bedroom",
                                       ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11,vertical: 6),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Styles.primaryColor, width: 2.5),
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 1.5),
                                        child: const FittedBox(
                                          child: ImageIcon(
                                            AssetImage("lib/icons/outdoorFurniture.png"),
                                            size: 55,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Outdoor Furniture",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ]),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppLayout.getScreenHeight() * 0.225),
                child: TabBarView(controller: _tabController, children: <Widget>[
                  Column(
                      children: [
                       SizedBox(
                          height: AppLayout.getScreenHeight() * 0.405,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(left: 0.0, bottom: 35),
                                  child:Container(
                                    height: AppLayout.getScreenHeight() * 0.405,
                                    color: Styles.bgColor,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Container(
                                          height: AppLayout.getHeight(250),
                                          width: AppLayout.getWidth(220),
                                          padding: const EdgeInsets.all(10.0),
                                          child: Card(
                                            elevation: 15,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(24),
                                            ),
                                            color: Colors.white,
                                            child: Padding(
                                              padding:  EdgeInsets.only(top: AppLayout.getHeight(70)),
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 10,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 2,
                                                            color: Colors.brown,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w300)),
                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 165),
                                          child: Image.asset(
                                              Armchair[index],
                                                fit: BoxFit.cover,
                                                height: 140,
                                                width: 140,
                                              ),

                                          ),

                                      ],
                                    ),
                                  ),

                                );
                              }
                             ),
                      ),
                       Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(
                                   horizontal: 22),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("New Arrivals",style: Styles.headLineStyle2,),
                                   ImageIcon(
                                     AssetImage("lib/icons/dashboard.png"),
                                     size: 25,color: Styles.primaryColor,),
                                 ],
                               ),

                             )
                           ],
                         ),
                       SizedBox(
                          height: AppLayout.getScreenHeight() * 0.21,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(top:10,right: 25.0),
                                  child: Container(
                                      height: AppLayout.getHeight(90),
                                      width: AppLayout.getWidth(300),
                                      color: Styles.bgColor,
                                    child: Stack(
                                      alignment:AlignmentDirectional.centerEnd,
                                      children: [
                                        SizedBox(
                                          height: AppLayout.getHeight(136),
                                          width: AppLayout.getWidth(230),
                                          child: Card(
                                            elevation: 30,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(24),
                                            ),
                                            color: Colors.white,
                                            child:
                                                  Padding(
                                                  padding: const EdgeInsets.only(top: 14,left: 70),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text('Yellow Armchir',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w500)),
                                                        Gap(5),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                            SizedBox(width: 3),
                                                            Text("5.0",style: TextStyle(fontSize: 9,
                                                                fontWeight: FontWeight.w500)),
                                                            SizedBox(width: 3),
                                                            Text("(1k reviews)",style: TextStyle(fontSize: 8,
                                                                fontWeight: FontWeight.w200))
                                                          ],
                                                        ),
                                                        Gap(5),
                                                        Text("\$500",
                                                            style: TextStyle(
                                                                letterSpacing: 1,
                                                                color: Colors.brown,
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w300)),

                                                        ElevatedButton(
                                                          //on pressed
                                                          onPressed: () async {},
                                                          //text to shoe in to the button
                                                          child: const Text('Add to cart',
                                                              style: TextStyle(color: Colors.white)),
                                                          //style section code here
                                                          style: ButtonStyle(
                                                            elevation: MaterialStateProperty.all<double>(0),
                                                            shape:
                                                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(18.0),
                                                                )),
                                                            backgroundColor:
                                                            MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                          ),
                                                        ),
                                                      ],
                                                    ),

                                                ),


                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 170),
                                          child: Image.asset(
                                            Armchair[index],
                                            fit: BoxFit.cover,
                                            height: 120,
                                            width: 120,
                                          ),
                                        ),
                                      ],


                                    )

                                  ),

                                );
                              }),
                        )
                    ]
                  ),
                  Column(
                      children: [
                        SizedBox(
                          height: AppLayout.getScreenHeight() * 0.405,
                          child: ListView.builder(
                              itemCount: 2,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(left: 0.0, bottom: 35),
                                  child:Container(
                                    height: AppLayout.getScreenHeight() * 0.405,
                                    color: Styles.bgColor,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Container(
                                          height: AppLayout.getHeight(250),
                                          width: AppLayout.getWidth(220),
                                          padding: const EdgeInsets.all(10.0),
                                          child: Card(
                                            elevation: 15,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(24),
                                            ),
                                            color: Colors.white,
                                            child: Padding(
                                              padding:  EdgeInsets.only(top: AppLayout.getHeight(70)),
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 10,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 2,
                                                            color: Colors.brown,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w300)),
                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 165),
                                          child: Image.asset(
                                            Table[index],
                                            fit: BoxFit.cover,
                                            height: 140,
                                            width: 140,
                                          ),

                                        ),

                                      ],
                                    ),
                                  ),

                                );
                              }
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("New Arrivals",style: Styles.headLineStyle2,),
                                  ImageIcon(
                                    AssetImage("lib/icons/dashboard.png"),
                                    size: 25,color: Styles.primaryColor,),
                                ],
                              ),

                            )
                          ],
                        ),
                        SizedBox(
                          height: AppLayout.getScreenHeight() * 0.21,
                          child: ListView.builder(
                              itemCount: 2,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(top:10,right: 25.0),
                                  child: Container(
                                      height: AppLayout.getHeight(90),
                                      width: AppLayout.getWidth(300),
                                      color: Styles.bgColor,
                                      child: Stack(
                                        alignment:AlignmentDirectional.centerEnd,
                                        children: [
                                          SizedBox(
                                            height: AppLayout.getHeight(136),
                                            width: AppLayout.getWidth(230),
                                            child: Card(
                                              elevation: 30,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(24),
                                              ),
                                              color: Colors.white,
                                              child:
                                              Padding(
                                                padding: const EdgeInsets.only(top: 14,left: 70),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 8,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 1,
                                                            color: Colors.brown,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),

                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                              ),


                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 170),
                                            child: Image.asset(
                                              Table[index],
                                              fit: BoxFit.cover,
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                        ],


                                      )

                                  ),

                                );
                              }),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        SizedBox(
                          height: AppLayout.getScreenHeight() * 0.405,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(left: 0.0, bottom: 35),
                                  child:Container(
                                    height: AppLayout.getScreenHeight() * 0.405,
                                    color: Styles.bgColor,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Container(
                                          height: AppLayout.getHeight(250),
                                          width: AppLayout.getWidth(220),
                                          padding: const EdgeInsets.all(10.0),
                                          child: Card(
                                            elevation: 15,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(24),
                                            ),
                                            color: Colors.white,
                                            child: Padding(
                                              padding:  EdgeInsets.only(top: AppLayout.getHeight(70)),
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 10,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 2,
                                                            color: Colors.brown,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w300)),
                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 165),
                                          child: Image.asset(
                                            livingroom[index],
                                            fit: BoxFit.cover,
                                            height: 140,
                                            width: 140,
                                          ),

                                        ),

                                      ],
                                    ),
                                  ),

                                );
                              }
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("New Arrivals",style: Styles.headLineStyle2,),
                                  ImageIcon(
                                    AssetImage("lib/icons/dashboard.png"),
                                    size: 25,color: Styles.primaryColor,),
                                ],
                              ),

                            )
                          ],
                        ),
                        SizedBox(
                          height: AppLayout.getScreenHeight() * 0.21,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(top:10,right: 25.0),
                                  child: Container(
                                      height: AppLayout.getHeight(90),
                                      width: AppLayout.getWidth(300),
                                      color: Styles.bgColor,
                                      child: Stack(
                                        alignment:AlignmentDirectional.centerEnd,
                                        children: [
                                          SizedBox(
                                            height: AppLayout.getHeight(136),
                                            width: AppLayout.getWidth(230),
                                            child: Card(
                                              elevation: 30,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(24),
                                              ),
                                              color: Colors.white,
                                              child:
                                              Padding(
                                                padding: const EdgeInsets.only(top: 14,left: 70),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 8,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 1,
                                                            color: Colors.brown,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),

                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                              ),


                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 170),
                                            child: Image.asset(
                                              livingroom[index],
                                              fit: BoxFit.cover,
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                        ],


                                      )

                                  ),

                                );
                              }),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        SizedBox(
                          height: AppLayout.getScreenHeight() * 0.405,
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(left: 0.0, bottom: 35),
                                  child:Container(
                                    height: AppLayout.getScreenHeight() * 0.405,
                                    color: Styles.bgColor,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Container(
                                          height: AppLayout.getHeight(250),
                                          width: AppLayout.getWidth(220),
                                          padding: const EdgeInsets.all(10.0),
                                          child: Card(
                                            elevation: 15,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(24),
                                            ),
                                            color: Colors.white,
                                            child: Padding(
                                              padding:  EdgeInsets.only(top: AppLayout.getHeight(70)),
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 10,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 2,
                                                            color: Colors.brown,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w300)),
                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 165),
                                          child: Image.asset(
                                            Kitchen[index],
                                            fit: BoxFit.cover,
                                            height: 140,
                                            width: 140,
                                          ),

                                        ),

                                      ],
                                    ),
                                  ),

                                );
                              }
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("New Arrivals",style: Styles.headLineStyle2,),
                                  ImageIcon(
                                    AssetImage("lib/icons/dashboard.png"),
                                    size: 25,color: Styles.primaryColor,),
                                ],
                              ),

                            )
                          ],
                        ),
                        SizedBox(
                          height: AppLayout.getScreenHeight() * 0.21,
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(top:10,right: 25.0),
                                  child: Container(
                                      height: AppLayout.getHeight(90),
                                      width: AppLayout.getWidth(300),
                                      color: Styles.bgColor,
                                      child: Stack(
                                        alignment:AlignmentDirectional.centerEnd,
                                        children: [
                                          SizedBox(
                                            height: AppLayout.getHeight(136),
                                            width: AppLayout.getWidth(230),
                                            child: Card(
                                              elevation: 30,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(24),
                                              ),
                                              color: Colors.white,
                                              child:
                                              Padding(
                                                padding: const EdgeInsets.only(top: 14,left: 70),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 8,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 1,
                                                            color: Colors.brown,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),

                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                              ),


                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 170),
                                            child: Image.asset(
                                              Kitchen[index],
                                              fit: BoxFit.cover,
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                        ],


                                      )

                                  ),

                                );
                              }),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        SizedBox(
                          height: AppLayout.getScreenHeight() * 0.405,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(left: 0.0, bottom: 35),
                                  child:Container(
                                    height: AppLayout.getScreenHeight() * 0.405,
                                    color: Styles.bgColor,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Container(
                                          height: AppLayout.getHeight(250),
                                          width: AppLayout.getWidth(220),
                                          padding: const EdgeInsets.all(10.0),
                                          child: Card(
                                            elevation: 15,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(24),
                                            ),
                                            color: Colors.white,
                                            child: Padding(
                                              padding:  EdgeInsets.only(top: AppLayout.getHeight(70)),
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 10,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 2,
                                                            color: Colors.brown,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w300)),
                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 165),
                                          child: Image.asset(
                                            outdoorFurniture[index],
                                            fit: BoxFit.cover,
                                            height: 140,
                                            width: 140,
                                          ),

                                        ),

                                      ],
                                    ),
                                  ),

                                );
                              }
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("New Arrivals",style: Styles.headLineStyle2,),
                                  ImageIcon(
                                    AssetImage("lib/icons/dashboard.png"),
                                    size: 25,color: Styles.primaryColor,),
                                ],
                              ),

                            )
                          ],
                        ),
                        SizedBox(
                          height: AppLayout.getScreenHeight() * 0.21,
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(top:10,right: 25.0),
                                  child: Container(
                                      height: AppLayout.getHeight(90),
                                      width: AppLayout.getWidth(300),
                                      color: Styles.bgColor,
                                      child: Stack(
                                        alignment:AlignmentDirectional.centerEnd,
                                        children: [
                                          SizedBox(
                                            height: AppLayout.getHeight(136),
                                            width: AppLayout.getWidth(230),
                                            child: Card(
                                              elevation: 30,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(24),
                                              ),
                                              color: Colors.white,
                                              child:
                                              Padding(
                                                padding: const EdgeInsets.only(top: 14,left: 70),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 8,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 1,
                                                            color: Colors.brown,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),

                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                              ),


                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 170),
                                            child: Image.asset(
                                              outdoorFurniture[index],
                                              fit: BoxFit.cover,
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                        ],


                                      )

                                  ),

                                );
                              }),
                        )
                      ]
                  ),
                  Column(
                      children: [
                        SizedBox(
                          height: AppLayout.getScreenHeight() * 0.405,
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(left: 0.0, bottom: 35),
                                  child:Container(
                                    height: AppLayout.getScreenHeight() * 0.405,
                                    color: Styles.bgColor,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Container(
                                          height: AppLayout.getHeight(250),
                                          width: AppLayout.getWidth(220),
                                          padding: const EdgeInsets.all(10.0),
                                          child: Card(
                                            elevation: 15,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(24),
                                            ),
                                            color: Colors.white,
                                            child: Padding(
                                              padding:  EdgeInsets.only(top: AppLayout.getHeight(70)),
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 10,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 2,
                                                            color: Colors.brown,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w300)),
                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 165),
                                          child: Image.asset(
                                            outdoorFurniture[index],
                                            fit: BoxFit.cover,
                                            height: 140,
                                            width: 140,
                                          ),

                                        ),

                                      ],
                                    ),
                                  ),

                                );
                              }
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("New Arrivals",style: Styles.headLineStyle2,),
                                  ImageIcon(
                                    AssetImage("lib/icons/dashboard.png"),
                                    size: 25,color: Styles.primaryColor,),
                                ],
                              ),

                            )
                          ],
                        ),
                        SizedBox(
                          height: AppLayout.getScreenHeight() * 0.21,
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(top:10,right: 25.0),
                                  child: Container(
                                      height: AppLayout.getHeight(90),
                                      width: AppLayout.getWidth(300),
                                      color: Styles.bgColor,
                                      child: Stack(
                                        alignment:AlignmentDirectional.centerEnd,
                                        children: [
                                          SizedBox(
                                            height: AppLayout.getHeight(136),
                                            width: AppLayout.getWidth(230),
                                            child: Card(
                                              elevation: 30,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(24),
                                              ),
                                              color: Colors.white,
                                              child:
                                              Padding(
                                                padding: const EdgeInsets.only(top: 14,left: 70),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Yellow Armchir',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w500)),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Icon(Icons.star,color: Colors.yellow,size: 14,),
                                                        SizedBox(width: 3),
                                                        Text("5.0",style: TextStyle(fontSize: 9,
                                                            fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 3),
                                                        Text("(1k reviews)",style: TextStyle(fontSize: 8,
                                                            fontWeight: FontWeight.w200))
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Text("\$500",
                                                        style: TextStyle(
                                                            letterSpacing: 1,
                                                            color: Colors.brown,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),

                                                    ElevatedButton(
                                                      //on pressed
                                                      onPressed: () async {},
                                                      //text to shoe in to the button
                                                      child: const Text('Add to cart',
                                                          style: TextStyle(color: Colors.white)),
                                                      //style section code here
                                                      style: ButtonStyle(
                                                        elevation: MaterialStateProperty.all<double>(0),
                                                        shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                            )),
                                                        backgroundColor:
                                                        MaterialStateProperty.all<Color>(Styles.primaryColor),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                              ),


                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 170),
                                            child: Image.asset(
                                              outdoorFurniture[index],
                                              fit: BoxFit.cover,
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                        ],


                                      )

                                  ),

                                );
                              }),
                        )
                      ]
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}

