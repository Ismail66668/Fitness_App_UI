import 'package:fitness_app_ui/screen/secend_Screen/widget/data_list.dart';
import 'package:fitness_app_ui/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({super.key});

  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  List datlist = DataList().datalist;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 120,
        child: BarChart(BarChartData(
          maxY: 100,
          minY: 5,
          gridData: const FlGridData(
            show: false,
          ),
          titlesData: const FlTitlesData(
              show: true,
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false))),
          barGroups: datlist
              .map((element) =>
                  BarChartGroupData(x: element["index"] + 1, barRods: [
                    BarChartRodData(
                      toY: element["valu"],
                      width: 20,
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.praimaryColor,
                      backDrawRodData: BackgroundBarChartRodData(
                          show: true, toY: 100, color: AppColors.appColor),
                    ),
                  ]))
              .toList(),
        )),
      ),
    );
  }
}
