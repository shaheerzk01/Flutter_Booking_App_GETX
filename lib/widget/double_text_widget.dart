import 'package:flutter/material.dart';

import '../utils/app_style.dart';
class AppDoubleTextWidget extends StatelessWidget {
  final String bigtext;
  final String smalltext;
  const AppDoubleTextWidget({Key? key, required this.bigtext, required this.smalltext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '$bigtext',
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: (){
            print("you are tapped");
          },
          child: Text(
            "$smalltext",
            style:
            Styles.textStyle.copyWith(color: Colors.grey.shade500),
          ),
        )
      ],
    );
  }
}
