


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'applayout.dart';

class BotomNavWidget extends StatelessWidget {
  const BotomNavWidget({
    super.key, this.onTap, this.icon,
  });
  final void Function()? onTap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:  SizedBox(
        height: AppLayout.getHeight(36),
        width: AppLayout.getWidth(36),
        child: Icon(icon, color: Colors.white,),
      ),
    );
  }
}