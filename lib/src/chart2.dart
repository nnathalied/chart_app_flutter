/// Scatter plot chart example, based on scatter examples from https://google.github.io/charts/
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Chart2 extends StatelessWidget {
  final List<charts.Series> seriesList;

  Chart2(this.seriesList);

  factory Chart2.withSampleData() {
    return new Chart2(
      _createSampleData()
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.ScatterPlotChart(
      seriesList, 
      behaviors: [
        new charts.ChartTitle('Chart 2',
            behaviorPosition: charts.BehaviorPosition.top,
            titleOutsideJustification: charts.OutsideJustification.start,
            innerPadding: 18)
        ]
      );
  }

  static List<charts.Series<Data, int>> _createSampleData() {
    final data = [
      new Data(287, 47),
      new Data(41, 9),
      new Data(240, 165),
      new Data(171, 182),
      new Data(50, 10),
      new Data(208, 89),
      new Data(165, 98),
      new Data(230, 125),
      new Data(216, 166),
      new Data(135, 36),
      new Data(214, 27),
      new Data(173, 140),
      new Data(299, 123),
      new Data(192, 157),
      new Data(179, 144),
      new Data(77, 32),
      new Data(135, 180),
      new Data(89, 157),
      new Data(50, 36),
      new Data(63, 140),
    ];

    return [
      new charts.Series<Data, int>(
        id: 'y',
        domainFn: (Data y, _) => y.x,
        measureFn: (Data y, _) => y.y,
        data: data,
      )
    ];
  }
}

class Data {
  final int x;
  final int y;

  Data(this.x, this.y);
}