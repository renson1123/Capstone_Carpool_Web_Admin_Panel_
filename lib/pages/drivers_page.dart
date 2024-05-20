import 'dart:ui';

import 'package:flutter/material.dart';

class DriversPage extends StatefulWidget
{
  static const String id = "\webageDrivers";
  const DriversPage({super.key});

  @override
  State<DriversPage> createState() => _DriversPageState();
}

class _DriversPageState extends State<DriversPage>
{
  Widget header(int headerFlexValue, String headerTitle)
  {
    return Expanded(
      flex: headerFlexValue,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.green.shade500,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            headerTitle,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                    "Manage Drivers",
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
                    header(1, "Driver ID"),
                    header(1, "FName"),
                    header(1, "MName"),
                    header(1, "LName"),
                    header(1, "Phone"),
                    header(1, "Email"),
                    header(1, "Employee #"),
                    header(1, "Driver Lic (F)"),
                    header(1, "Driver Lic (B)"),
                    header(1, "Med Cert"),
                    header(1, "Action"),
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
