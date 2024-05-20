import 'package:flutter/material.dart';

class DocumentsPage extends StatefulWidget
{
  static const String id = "\webageDocuments";
  const DocumentsPage({super.key});

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage>
{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Documents Page",
          style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 24
          ),
        ),
      ),
    );
  }
}
