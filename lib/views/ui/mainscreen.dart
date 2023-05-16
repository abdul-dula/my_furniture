import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:my_furniture/controllers/mainscreen_provider.dart';
import 'package:my_furniture/views/shared/appstyle.dart';
import 'package:my_furniture/views/ui/cartpage.dart';
import 'package:my_furniture/views/ui/homepage.dart';
import 'package:my_furniture/views/ui/profile.dart';
import 'package:my_furniture/views/ui/searchpage.dart';
import 'package:provider/provider.dart';

import '../shared/applayout.dart';
import '../shared/bottom_nav.dart';
import '../shared/bottom_nav_widget.dart';

class mainscreen extends StatelessWidget {
  mainscreen({super.key});

  List<Widget> pageList = [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    int pageIndex =0;
    return Consumer<MainScreenNotifier>(
      builder: (context,mainScreenNotifier ,child){
        return  Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: BottomNav(),

        );
      }
    );
  }
}

