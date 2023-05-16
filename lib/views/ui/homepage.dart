import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_furniture/views/shared/appstyle.dart';

import '../shared/applayout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  late final TabController _tabController =
  TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
      body: SizedBox(
        height: AppLayout.getScreenHeight(),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),//التلاعب في المسافه بين الكتابه والصوره
              child: Column(
                children: [
                  const Gap(40), // المسافه العاموديه الي بين الجمله و فوق
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, //خلق المسافه بين الكتابه والصوره
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, //
                        children: [
                          Text(
                            "FIND FURNITURE", style: Styles.headLineStyle1,
                          ),
                          const Gap(5),
                          Text(
                            "BEST FOR YOUR",style: Styles.headLineStyle3,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 58,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/myfurniture_logo.png")
                            )
                        ),
                      ),
                    ],
                  ),
                  const Gap(25), // or we can use "SizedBox (height: 25,)"
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: AppLayout.getScreenWidth()/1.50,
                            height: AppLayout.getScreenHeight()/17.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: const Color(0xFFF4F6FD),
                                boxShadow:[
                                  BoxShadow( //bottom shadow
                                    color: Colors.grey.shade300,
                                    blurRadius:5.0,
                                    offset: Offset(11, 11),
                                  ),
                                ]
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                            child: Row(
                              children: [
                                Icon(FluentSystemIcons.ic_fluent_search_regular, color: Styles.primaryColor,size: AppLayout.getScreenHeight()/35.75,),
                                SizedBox(width: 3,),
                                Text("Search", style: Styles.headLineStyle4,),

                              ]
                               ),
                              ),
                        ],
                      ),
                      Center(
                        child: Container(
                          width: AppLayout.getScreenWidth()/9.56,
                          height: AppLayout.getScreenHeight()/17.06,
                          child: Icon(Icons.filter_list_rounded, color: Styles.primaryColor,size: AppLayout.getScreenHeight()/35.75,),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                            color: const Color(0xFFF4F6FD),
                              boxShadow:[
                                BoxShadow( //bottom shadow
                                  color: Colors.grey.shade300,
                                  blurRadius:5.0,
                                  offset: Offset(11, 11),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(25),
                  TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.blue,
                      ),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.transparent,
                      controller: _tabController,
                      isScrollable:true,
                      labelColor: Colors.black,
                      labelStyle: Styles.headLineStyle2 ,
                      unselectedLabelColor: Colors.grey.withOpacity(0.3),
                      tabs:  <Widget>[
                        Tab(child: Container(
                          height: 30,
                          width: 160,
                            decoration: BoxDecoration(

                                color: Color(0x4F11CEB8),
                                borderRadius: BorderRadius.circular(17)
                            ),
                            child:Center(
                                child: Text("find tickets",)
                            ) ,
                          ),),
                        Tab(child: Container(
                          decoration: BoxDecoration(
                              color: Color(0x4F11CEB8),
                              borderRadius: BorderRadius.circular(17)
                          ),
                          child:Center(
                              child: Text("find tickets 2",)
                          ) ,
                        ),),
                        Tab(child: Container(
                          decoration: BoxDecoration(
                              color: Color(0x4F11CEB8),
                              borderRadius: BorderRadius.circular(17)
                          ),
                          child:Center(
                              child: Text("find tickets 3",)
                          ) ,
                        ),),
                      ]
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: AppLayout.getScreenHeight()*0.365),
              child: TabBarView(
                  controller: _tabController,
                  children:  <Widget>[
                    Column(
                        children: [
                      Container(
                        height: AppLayout.getScreenHeight()*0.405,
                        color: Colors.green,
                        ),
                        ]),

                    Column(children: [
                      Container(
                        height: AppLayout.getScreenHeight()*0.405,
                        color: Colors.yellow,
                      ),
                      ]),

                    Column(children: [
                      Container(
                        height: AppLayout.getScreenHeight()*0.405,
                        color: Colors.blue,
                      ),
                    ],)
                  ]),
            )
          ],
        ),
      )
    );
  }
}
