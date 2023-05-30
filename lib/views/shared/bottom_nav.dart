import 'package:flutter/cupertino.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:my_furniture/controllers/mainscreen_provider.dart';
import 'package:my_furniture/views/ui/mainscreen.dart';
import 'package:provider/provider.dart';

import 'appstyle.dart';
import 'bottom_nav_widget.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context,mainScreenNotifier,child){
      return SafeArea(
        child:
        Padding(padding: EdgeInsets.all(8),
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal:10),
            decoration:  BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(17))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BotomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 0;
                  },
                  icon: mainScreenNotifier.pageIndex == 0
                      ? MaterialCommunityIcons.home
                      : MaterialCommunityIcons.home_outline,
                ),
                BotomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 1;
                  },
                  icon: mainScreenNotifier.pageIndex == 1
                      ? Ionicons.search
                      : Ionicons.search,
                ),
                BotomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 2;
                  },
                  icon: mainScreenNotifier.pageIndex == 2
                      ? Ionicons.heart
                      : Ionicons.heart_circle_outline,
                ),
                BotomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 3;
                  },
                  icon: mainScreenNotifier.pageIndex == 3
                      ? Ionicons.cart
                      : Ionicons.cart_outline,
                ),
                BotomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 4;
                  },
                  icon: mainScreenNotifier.pageIndex == 4
                      ? Ionicons.person
                      : Ionicons.person_outline,
                ),
              ],
            ),
          ),),);
      },
    );
  }
}

