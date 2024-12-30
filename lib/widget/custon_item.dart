// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustonItem extends StatefulWidget {
  String data;
  final IconData icon;
  CustonItem({
    super.key,
    required this.data,
    required this.icon,
  });

  @override
  State<CustonItem> createState() => _CustonItemState();
}

class _CustonItemState extends State<CustonItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          widget.icon,
          color: Colors.black.withOpacity(0.4),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          widget.data,
          style: TextStyle(color: Colors.black.withOpacity(0.4)),
        )
      ],
    );
  }
}
