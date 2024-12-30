import 'package:fitness_app_ui/screen/secend_Screen/widget/contaner_one.dart';
import 'package:fitness_app_ui/screen/secend_Screen/widget/contaner_tow.dart';
import 'package:fitness_app_ui/screen/secend_Screen/widget/fl_chart.dart';
//import 'package:fitness_app_ui/screen/secend_Screen/widget/data_list.dart';
import 'package:fitness_app_ui/utils/colors.dart';
//import 'package:fitness_app_ui/widget/custom_helth_widget.dart';
import 'package:fitness_app_ui/widget/custom_icons.dart';
import 'package:fitness_app_ui/widget/custom_text.dart';
//import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SecendScreen extends StatefulWidget {
  const SecendScreen({super.key});

  @override
  State<SecendScreen> createState() => _SecendScreenState();
}

class _SecendScreenState extends State<SecendScreen> {
  @override
  Widget build(BuildContext context) {
    var text = CustomText();
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appcolor,
        leading: CircularButton(
          icon: Icons.arrow_back_ios_new_rounded,
          baggroundColor: AppColors.appColor,
          height: 45,
          width: 45,
        ),
        actions: [
          CircularButton(
            icon: Icons.notification_add,
            baggroundColor: AppColors.appColor,
            height: 60,
            width: 60,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const ContanerOne(),
            const ContanerTow(),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              height: size.height * 0.26,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.praimaryColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: [
                  text.TextOne(data: "Blood Pressar"),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomChart(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
