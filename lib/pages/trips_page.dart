import 'package:flutter/material.dart';

class TripsPage extends StatefulWidget
{
  static const String id = "\webageTrips";
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage>
{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Trips Page",
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 24
          ),
        ),
      ),
    );
  }
}
