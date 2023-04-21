import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../screens/constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(children: [
        PieChart(PieChartData(
            startDegreeOffset: -90,
            sectionsSpace: 0,
            centerSpaceRadius: 70,
            sections: [
              PieChartSectionData(
                  color: primaryColor, value: 25, showTitle: false, radius: 25),
              PieChartSectionData(
                  color: Colors.red, value: 15, showTitle: false, radius: 22),
              PieChartSectionData(
                  color: Colors.amber, value: 12, showTitle: false, radius: 19),
              PieChartSectionData(
                  color: Colors.brown, value: 10, showTitle: false, radius: 16),
              PieChartSectionData(
                  color: Colors.red, value: 15, showTitle: false, radius: 13),
            ])),
        Positioned.fill(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("21.5", style: Theme.of(context).textTheme.headline4),
            const Text("of 128GB")
          ],
        ))
      ]),
    );
  }
}
