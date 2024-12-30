import 'package:fitness_app_ui/utils/colors.dart';
import 'package:fitness_app_ui/widget/custom_helth_widget.dart';
import 'package:fitness_app_ui/widget/custom_text.dart';
import 'package:flutter/material.dart';

class ContanerOne extends StatefulWidget {
  const ContanerOne({super.key});

  @override
  State<ContanerOne> createState() => _ContanerOneState();
}

class _ContanerOneState extends State<ContanerOne> {
  var text = CustomText();

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.sizeOf(context);
    return Container(
      child: Column(
        children: [
          text.TextOne(data: "Make Your ", fontSize: 18),
          text.TextOne(
              data: "Body Parfect",
              fontSize: 17,
              textcolor: AppColors.praimaryColor),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomHelthWidget(
                titel: 'Caloris',
                subtitel: '140 Kcal',
              ),
              CustomHelthWidget(
                titel: 'Protin',
                subtitel: '30 Gram',
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomHelthWidget(
                titel: 'Sleep',
                subtitel: '3 Hours',
              ),
              CustomHelthWidget(
                titel: 'Weight',
                subtitel: '67 Kg',
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
