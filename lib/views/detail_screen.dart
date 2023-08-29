import 'package:covid19_tracker/views/world_states.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetialScreen extends StatefulWidget {
  String name;
  String image;
  int totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;
  DetialScreen({
    required this.name,
    required this.image,
    required this.totalCases,
    required this.totalDeaths,
    required this.todayRecovered,
    required this.totalRecovered,
    required this.test,
    required this.active,
    required this.critical,
  });

  @override
  State<DetialScreen> createState() => _DetialScreenState();
}

class _DetialScreenState extends State<DetialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                      ),
                      ReuseableRow(
                        title: 'Cases',
                        value: widget.totalCases.toString(),
                      ),
                      ReuseableRow(
                        title: 'Active',
                        value: widget.active.toString(),
                      ),
                      ReuseableRow(
                        title: 'Recovered',
                        value: widget.totalRecovered.toString(),
                      ),
                      ReuseableRow(
                        title: 'Deaths',
                        value: widget.totalDeaths.toString(),
                      ),
                      ReuseableRow(
                        title: 'Critical',
                        value: widget.critical.toString(),
                      ),
                      ReuseableRow(
                        title: 'Today Deaths',
                        value: widget.totalDeaths.toString(),
                      ),
                      ReuseableRow(
                        title: 'Today Recovered',
                        value: widget.todayRecovered.toString(),
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
