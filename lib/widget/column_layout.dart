import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment crossAlignment;
  final String firsttext;
  final String secondtext;
  const AppColumnLayout({Key? key, required this.firsttext, required this.secondtext, required this.crossAlignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAlignment,
      children: [
        Text("$firsttext", style: Styles.headlineStyle3.copyWith(color: Colors.grey.shade900),),
        Gap(AppLayout.getHeight(5)),
        Text("$secondtext", style: Styles.headlineStyle4,)
      ],
    );
  }
}
