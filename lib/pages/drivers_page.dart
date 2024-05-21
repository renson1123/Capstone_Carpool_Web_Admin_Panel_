import 'dart:ui';

import 'package:capstone_web_admin_panel_carpool/methods/common_methods.dart';
import 'package:capstone_web_admin_panel_carpool/widgets/drivers_data_list.dart';
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
  CommonMethods cMethods = CommonMethods();

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
                    cMethods.header(1, "Driver ID"),
                    cMethods.header(1, "FName"),
                    cMethods.header(1, "MName"),
                    cMethods.header(1, "LName"),
                    cMethods.header(1, "Phone"),
                    cMethods.header(1, "Email"),
                    cMethods.header(1, "Employee #"),
                    cMethods.header(1, "Driver Lic (F)"),
                    cMethods.header(1, "Driver Lic (B)"),
                    cMethods.header(1, "Med Cert"),
                    cMethods.header(1, "Action"),
                  ],
                ),

                // Display Data
                DriversDataList(),

              ],
            ),
          ),
      ),
    );
  }
}
