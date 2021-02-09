import 'package:flutter/material.dart';
import 'package:chart_app_flutter/src/chart1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SimpleScatterPlotChart(),
      ),
    );
  }
}
