import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12), horizontal: AppLayout.getWidht(12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
          color: Colors.white
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFB5C2DF),),
          Gap(AppLayout.getHeight(10)),
          Text("$text", style: Styles.textStyle,)
        ],
      ),
    );
  }
}
