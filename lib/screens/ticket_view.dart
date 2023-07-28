import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/widget/Layout_builder_widget.dart';
import 'package:ticket_booking/widget/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  final bool? thickColor;
  const TicketView({Key? key, required this.ticket, this.isColor, this.thickColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true? 175: 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /*
            showing the blue part of the ticket
             */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Styles.greyColor: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(15)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: isColor==null? Styles.headlineStyle3
                              .copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.grey.shade900)),
                      const Spacer(),
                      ThickContainer(isColor: true),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: AppLayoutBuilderWidget(section: 6)
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor==null? Colors.white: Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(isColor: true),
                      const Spacer(),
                      Text(ticket['to']['code'],
                          style: isColor==null? Styles.headlineStyle3
                              .copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.grey.shade900))
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidht(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor==null? Styles.headlineStyle4
                              .copyWith(color: Colors.white): Styles.headlineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor==null? Styles.headlineStyle4.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white): Styles.headlineStyle4.copyWith(fontWeight: FontWeight.bold, color: Colors.grey.shade900),
                      ),
                      SizedBox(
                        width: AppLayout.getWidht(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor==null? Styles.headlineStyle4
                              .copyWith(color: Colors.white): Styles.headlineStyle4,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            /*
            showing the orange part of the ticket
             */
            Container(
              color: isColor==null? Styles.orangeColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidht(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.white: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: isColor==null? Colors.white: Colors.grey.shade400),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidht(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.white: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            bottom part of the orange ticket
             */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Styles.orangeColor: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null? 21: 0),
                  bottomRight: Radius.circular(isColor==null? 21: 0),
                ),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'], style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.grey.shade900)),
                          const Gap(1),
                          Text("Date", style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'], style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.grey.shade900)),
                          const Gap(1),
                          Text("Departure time", style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(), style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.grey.shade900)),
                          const Gap(1),
                          Text("Number", style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
