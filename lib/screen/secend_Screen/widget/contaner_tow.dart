import 'package:fitness_app_ui/utils/colors.dart';
import 'package:fitness_app_ui/widget/custom_icons.dart';
import 'package:fitness_app_ui/widget/custom_text.dart';
import 'package:flutter/material.dart';

class ContanerTow extends StatefulWidget {
  const ContanerTow({super.key});

  @override
  State<ContanerTow> createState() => _ContanerTowState();
}

class _ContanerTowState extends State<ContanerTow> {
  @override
  Widget build(BuildContext context) {
    var text = CustomText();
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 0.28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.praimaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ListTile(
            leading: CircularButton(
              icon: (Icons.heart_broken),
              baggroundColor: Colors.black.withOpacity(0.1),
              iconColor: Colors.black,
            ),
            title: text.TextOne(
                data: "851 ms", fontSize: 20, textcolor: Colors.black),
            subtitle: text.TextOne(
                data: "R-R intervel",
                fontSize: 16,
                textcolor: Colors.black.withOpacity(0.4)),
          ),
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black),
                    ),
                    const Text(
                      "850 cm",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    const Text(
                      "830 cm",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    const Text(
                      "810 cm",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
