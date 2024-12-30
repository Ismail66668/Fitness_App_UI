// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/colors.dart';

// ignore: must_be_immutable
class CircularButton extends StatefulWidget {
  IconData icon;
  double? height;
  double? iconhight;
  double? width;
  Color? baggroundColor;
  Color? iconColor;
  CircularButton(
      {super.key,
      required this.icon,
      this.height,
      this.width,
      this.iconhight,
      this.baggroundColor,
      this.iconColor});

  @override
  State<CircularButton> createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 40,
      width: widget.width ?? 40,
      decoration: BoxDecoration(
          color:
              widget.baggroundColor ?? AppColors.whiteColors.withOpacity(0.3),
          shape: BoxShape.circle),
      child: Icon(
        widget.icon,
        color: widget.iconColor ?? Colors.white,
        size: widget.iconhight ?? 24,
      ),
    );
  }
}
