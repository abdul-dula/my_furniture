import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


import '../shared/applayout.dart';
import '../shared/appstyle.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SizedBox(

          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 22),
                child: Column(
                  children: [
                     Gap(AppLayout.getHeight(60)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: AppLayout.getScreenWidth() / 1.50,
                              height: AppLayout.getScreenHeight() / 17.06,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: const Color(0xFFF4F6FD),
                                  boxShadow: [
                                    BoxShadow(
                                      //bottom shadow
                                      color: Colors.grey.shade300,
                                      blurRadius: 5.0,
                                      offset: Offset(11, 11),
                                    ),
                                  ]),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 11),
                              child: Row(children: [
                                Icon(
                                  FluentSystemIcons.ic_fluent_search_regular,
                                  color: Styles.primaryColor,
                                  size: AppLayout.getScreenHeight() / 35.75,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Search",
                                  style: Styles.headLineStyle4,
                                ),
                              ]),
                            ),
                          ],
                        ),
                        Center(
                          child:
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 11,horizontal: 12),
                              child: FittedBox(
                                child: ImageIcon(
                                  AssetImage("lib/icons/filter.png"),
                                  color: Styles.primaryColor,
                                  size: AppLayout.getScreenHeight() / 35.75,
                                ),
                              ),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: const Color(0xFFF4F6FD),
                                boxShadow: [
                                  BoxShadow(
                                    //bottom shadow
                                    color: Colors.grey.shade300,
                                    blurRadius: 5.0,
                                    offset: Offset(11, 11),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                    const Gap(25),
                    Row(
                    //     SizedBox(
                    //   height: 220,
                    //   child: Stack(
                    //     alignment: Alignment.bottomCenter,
                    //     children: [
                    //       Container(
                    //         height: 200,
                    //         width: double.infinity,
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Card(
                    //           color: Colors.blueAccent,
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(12),
                    //             child: Column(
                    //                 crossAxisAlignment: CrossAxisAlignment.start,
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 children: [
                    //                   const Text('50% off',
                    //                       style: TextStyle(
                    //                           color: Colors.white,
                    //                           fontSize: 25,
                    //                           fontWeight: FontWeight.bold)),
                    //                   const SizedBox(
                    //                     height: 5,
                    //                   ),
                    //                   const Text('For Any Courses',
                    //                       style: TextStyle(
                    //                           letterSpacing: 2,
                    //                           color: Colors.white,
                    //                           fontSize: 15,
                    //                           fontWeight: FontWeight.w300)),
                    //                   const SizedBox(
                    //                     height: 6,
                    //                   ),
                    //                   ElevatedButton(
                    //                     //on pressed
                    //                     onPressed: () async {},
                    //                     //text to shoe in to the button
                    //                     child: const Text('Join Now!',
                    //                         style: TextStyle(color: Colors.white)),
                    //                     //style section code here
                    //                     style: ButtonStyle(
                    //                       elevation: MaterialStateProperty.all<double>(0),
                    //                       shape:
                    //                       MaterialStateProperty.all<RoundedRectangleBorder>(
                    //                           RoundedRectangleBorder(
                    //                             borderRadius: BorderRadius.circular(18.0),
                    //                           )),
                    //                       backgroundColor:
                    //                       MaterialStateProperty.all<Color>(Colors.black),
                    //                     ),
                    //                   ),
                    //                 ]),
                    //           ),
                    //         ),
                    //       ),
                    //       Positioned(
                    //         right: 0,
                    //         top: 0,
                    //         child: Image.asset(
                    //           'asset/icons/yellow_sofa.png',
                    //           fit: BoxFit.cover,
                    //           height: 210,
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // );
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )


    );
  }
}
