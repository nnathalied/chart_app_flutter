import 'package:flutter/material.dart';
import 'package:chart_app_flutter/src/chart1.dart';
import 'package:chart_app_flutter/src/chart2.dart';
import 'package:chart_app_flutter/src/chart3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Flutter Chart App Demo"),
      ),

      body: ListView(padding: const EdgeInsets.all(10), children: <Widget>[
        Container(
          //CHART 1
          padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
          height: 350,
          child: Chart1.withSampleData(),
        ),
        Container(
          //CHART 2
          padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
          height: 350,
          child: Chart2.withSampleData(),
        ),
        Container(
          //CHART 3
          padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
          height: 350,
          child: Chart3.withSampleData(),
        )
      ]));
  }
}