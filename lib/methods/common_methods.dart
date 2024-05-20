import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CommonMethods
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
}