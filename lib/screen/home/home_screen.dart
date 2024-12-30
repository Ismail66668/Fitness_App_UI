import 'package:fitness_app_ui/screen/secend_Screen/secend_screen.dart';
import 'package:fitness_app_ui/utils/colors.dart';
import 'package:fitness_app_ui/widget/custom_icons.dart';
import 'package:fitness_app_ui/widget/custom_text.dart';
import 'package:fitness_app_ui/widget/custon_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var text = CustomText();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appcolor,
        leading: CircularButton(
          icon: Icons.menu,
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            text.TextOne(data: "Make Your ", fontSize: 18),
            text.TextOne(
                data: "Body Parfect",
                fontSize: 17,
                textcolor: AppColors.praimaryColor),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height * .3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.praimaryColor),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text.TextOne(
                            data: "Full Body \n Exercise X3",
                            textcolor: Colors.black),
                        const SizedBox(
                          height: 5,
                        ),
                        CustonItem(
                          icon: Icons.local_fire_department_outlined,
                          data: "123 kacl",
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        CustonItem(
                          icon: Icons.timelapse_sharp,
                          data: "50 Min",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SecendScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFB6C53A)),
                          child: Text(
                            "Start Now ",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/bollyball.png',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.praimaryColor),
                      height: size.height * .3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircularButton(
                                icon: Icons.directions_run,
                                iconColor: Colors.black,
                                baggroundColor: AppColors.appColor,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text.TextOne(
                                    data: "Raning \nDistence ",
                                    fontSize: 22,
                                    textcolor: Colors.black.withOpacity(0.5)),
                                text.TextOne(
                                    data: "1.8 KM",
                                    fontSize: 24,
                                    textcolor: Colors.black.withOpacity(0.9),
                                    fontweidth: FontWeight.bold),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.appColor),
                      height: size.height * .3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircularButton(
                                icon: Icons.directions_bike,
                                iconColor: AppColors.appColor,
                                baggroundColor:
                                    AppColors.whiteColors.withOpacity(0.5),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text.TextOne(
                                    data: "Total \nCycling ",
                                    fontSize: 22,
                                    textcolor: Colors.white.withOpacity(0.5)),
                                text.TextOne(
                                    data: "1.8 KM",
                                    fontSize: 24,
                                    textcolor: Colors.white.withOpacity(0.9),
                                    fontweidth: FontWeight.bold),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.appColor),
              height: size.height * .12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text.TextOne(data: "Appoinment ", fontSize: 18),
                            text.TextOne(
                                data: "For Excercise practic ",
                                fontSize: 12,
                                textcolor: Colors.white.withOpacity(0.5)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 15),
                        child: CircularButton(
                          icon: Icons.call,
                          iconColor: AppColors.appColor,
                          baggroundColor: AppColors.praimaryColor,
                        ),
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
