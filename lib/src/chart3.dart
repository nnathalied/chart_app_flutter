/// Bar chart with example of a legend
/// Based on example from
/// https://google.github.io/charts/flutter/example/legends/series_legend_with_measures
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Chart3 extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  Chart3(this.seriesList, {this.animate});

  factory Chart3.withSampleData() {
    return new Chart3(
      _createSampleData(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
      behaviors: [
        new charts.SeriesLegend(
          position: charts.BehaviorPosition.end,
          horizontalFirst: false,
          cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
          showMeasures: true,
        ),
      ],
    );
  }

  /// Create series list
  static List<charts.Series<UniversityData, String>> _createSampleData() {
    final cowsData = [
      new UniversityData('Davis', 150),
      new UniversityData('Berkley', 0),
      new UniversityData('LA', 10),
      new UniversityData('Merced', 50),
    ];

    final dormData = [
      new UniversityData('Davis', 25),
      new UniversityData('Berkley', 10),
      new UniversityData('LA', 50),
      new UniversityData('Merced', 20),
    ];

    final foodData = [
      new UniversityData('Davis', 65),
      new UniversityData('Berkley', 30),
      new UniversityData('LA', 75),
      new UniversityData('Merced', 45),
    ];

    final profData = [
      new UniversityData('Davis', 80),
      new UniversityData('Berkley', 100),
      new UniversityData('LA', 125),
      new UniversityData('Merced', 75),
    ];

    return [
      new charts.Series<UniversityData, String>(
        id: 'Cows',
        domainFn: (UniversityData data, _) => data.school,
        measureFn: (UniversityData data, _) => data.data,
        data: cowsData,
        // colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      ),
      new charts.Series<UniversityData, String>(
        id: 'Dorm Rooms',
        domainFn: (UniversityData data, _) => data.school,
        measureFn: (UniversityData data, _) => data.data,
        data: dormData,
        //colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      ),
      new charts.Series<UniversityData, String>(
        id: 'Food Trucks',
        domainFn: (UniversityData data, _) => data.school,
        measureFn: (UniversityData data, _) => data.data,
        data: foodData,
        // colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      ),
      new charts.Series<UniversityData, String>(
        id: 'Buildings',
        domainFn: (UniversityData data, _) => data.school,
        measureFn: (UniversityData data, _) => data.data,
        data: profData,
        // colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      ),
    ];
  }
}

/// data type
class UniversityData {
  final String school;
  final int data;

  UniversityData(this.school, this.data);
}
