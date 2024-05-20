import 'package:capstone_web_admin_panel_carpool/methods/common_methods.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget
{
  static const String id = "\webageUsers";
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage>
{
  CommonMethods cMethods = new CommonMethods();

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
                  "Manage Users",
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
                  cMethods.header(1, "User ID"),
                  cMethods.header(1, "FName"),
                  cMethods.header(1, "MName"),
                  cMethods.header(1, "LName"),
                  cMethods.header(1, "Employee #"),
                  cMethods.header(1, "Phone"),
                  cMethods.header(1, "Email"),
                  cMethods.header(1, "Action"),
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
