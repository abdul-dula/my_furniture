import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_furniture/views/shared/appstyle.dart';

import '../shared/applayout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
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
                    const Gap(40), // المسافه العاموديه الي بين الجمله و فوق
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, //خلق المسافه بين الكتابه والصوره
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
                          color: Colors.black,
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Colors.white,
                        labelStyle: Styles.headLineStyle3,
                        unselectedLabelColor: Colors.black54,
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
                                        color: Colors.black54, width: 2.5),
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
                                        color: Colors.black54, width: 2.5),
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
                                        color: Colors.black54, width: 2.5),
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 1.5),
                                        child: const FittedBox(
                                          child: ImageIcon(
                                            AssetImage("lib/icons/sofa.png"),
                                            size: 55,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                       Text(
                                         "Sofa",
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
                                        color: Colors.black54, width: 2.5),
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
                                         "bed",
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
                child: Container(
                  child: TabBarView(controller: _tabController, children: <Widget>[
                    Column(
                        children: [
                          SizedBox(
                            height: AppLayout.getScreenHeight() * 0.405,
                            child: ListView.builder(
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child:Container(
                                      height: AppLayout.getScreenHeight() * 0.405,
                                      color: Styles.bgColor,
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Container(
                                            height: AppLayout.getHeight(230),
                                            width: AppLayout.getWidth(220),
                                            padding: const EdgeInsets.all(10.0),
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(25),
                                              ),
                                              color: Colors.white,
                                              child: Padding(
                                                padding:  EdgeInsets.only(top: AppLayout.getHeight(30)),
                                                child: Column(
                                                  
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      
                                                      const Text('Yellow Armchir',
                                                          style: TextStyle(
                                                              color: Colors.black54,
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w500)),
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
                                                          MaterialStateProperty.all<Color>(Colors.black),
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 15,
                                            child: Image.asset(
                                              'assets/yellow_sofa.png',
                                              fit: BoxFit.cover,
                                              height: 145,
                                              width: 145,
                                            ),
                                          )
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
                                       size: 25,color: Styles.primaryColor,)
                                   ],
                                 ),
                               )
                             ],
                           ),
                          SizedBox(
                            height: AppLayout.getScreenHeight() * 0.24,
                            child: ListView.builder(
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      color: Colors.grey,
                                      height: AppLayout.getScreenHeight()*0.22,
                                      width: AppLayout.getScreenWidth()*0.66,
                                    ),
                                  );
                                }),
                          )
                      ]
                    ),
                    Column(
                        children: [
                      Container(
                        height: AppLayout.getScreenHeight() * 0.405,
                        color: Styles.bgColor,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 200,
                              width: 220,
                              padding: const EdgeInsets.all(10.0),
                              child: Card(
                                color: Colors.blueAccent,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('50% off',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text('For Any Courses',
                                            style: TextStyle(
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300)),

                                        // ElevatedButton(
                                        //   //on pressed
                                        //   onPressed: () async {},
                                        //   //text to shoe in to the button
                                        //   child: const Text('Join Now!',
                                        //       style: TextStyle(color: Colors.white)),
                                        //   //style section code here
                                        //   style: ButtonStyle(
                                        //     elevation: MaterialStateProperty.all<double>(0),
                                        //     shape:
                                        //     MaterialStateProperty.all<RoundedRectangleBorder>(
                                        //         RoundedRectangleBorder(
                                        //           borderRadius: BorderRadius.circular(18.0),
                                        //         )),
                                        //     backgroundColor:
                                        //     MaterialStateProperty.all<Color>(Colors.black),
                                        //   ),
                                        // ),
                                      ]),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Image.asset(
                                'assets/yellow_sofa.png',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Container(
                          height: AppLayout.getScreenHeight() * 0.405,
                          color: Colors.blue,
                        ),
                      ],
                     ),
                    Column(
                      children: [
                        Container(
                          height: AppLayout.getScreenHeight() * 0.405,
                          color: Colors.pink,
                        ),
                      ],
                    )
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
