/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Chart1 extends StatelessWidget {
  final List<charts.Series> seriesList;

  Chart1(this.seriesList);

  /// Creates a [BarChart]
  factory Chart1.withSampleData() {
    return new Chart1(
      _createSampleData(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList
    );
  }

  /// Create one series with sample hard coded food data.
  static List<charts.Series<FavFoods, String>> _createSampleData() {
    final data = [
      new FavFoods('Ice Cream', 30),
      new FavFoods('Fruit', 25),
      new FavFoods('Pizza', 50),
      new FavFoods('Vegetables', 20),
    ];

    return [
      new charts.Series<FavFoods, String>(
        id: 'Favorite Foods',
        colorFn: (_, __) => charts.MaterialPalette.pink.shadeDefault,
        domainFn: (FavFoods number, _) => number.food,
        measureFn: (FavFoods number, _) => number.number,
        data: data,
      )
    ];
  }
}

/// FavFoods Data type
class  FavFoods{
  final String food;
  final int number;

  FavFoods(this.food, this.number);
}
