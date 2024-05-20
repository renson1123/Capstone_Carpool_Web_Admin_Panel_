import 'package:capstone_web_admin_panel_carpool/methods/common_methods.dart';
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
  CommonMethods cMethods = new CommonMethods();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Manage Trips",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(
                height: 18,
              ),

              Row(
                children: [
                  cMethods.header(1, "Trip ID"),
                  cMethods.header(1, "Driver Name"),
                  cMethods.header(1, "Phone Number"),
                  cMethods.header(1, "Car Type"),
                  cMethods.header(1, "Starting Point"),
                  cMethods.header(1, "Destination"),
                  cMethods.header(1, "Time of Departure"),
                  cMethods.header(1, "Time of Arrival"),
                  cMethods.header(1, "View Details"),
                ],
              ),

              // Display Data

            ],
          ),
        ),
      ),
    );
  }
}
