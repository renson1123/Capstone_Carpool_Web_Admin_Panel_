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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Users Page",
          style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 24
          ),
        ),
      ),
    );
  }
}
