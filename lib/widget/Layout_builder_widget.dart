import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int section;
  final double width;
  const AppLayoutBuilderWidget({Key? key, this.isColor, required this.section, this.width=3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / section)
                .floor(),
                (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: isColor==null? Colors.white: Colors.grey.shade400),
              ),
            ),
          ),
        );
      },
    );
  }
}
