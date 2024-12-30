// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fitness_app_ui/utils/colors.dart';
import 'package:fitness_app_ui/widget/custom_text.dart';

// ignore: must_be_immutable
class CustomHelthWidget extends StatelessWidget {
  final String titel;
  final String subtitel;
  CustomHelthWidget({
    super.key,
    required this.titel,
    required this.subtitel,
  });
  var text = CustomText();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: const BoxDecoration(
              color: AppColors.praimaryColor, shape: BoxShape.circle),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            text.TextOne(data: titel, fontSize: 16),
            text.TextOne(
                data: subtitel,
                fontSize: 12,
                textcolor: Colors.white.withOpacity(0.5))
          ],
        )
      ],
    );
  }
}
