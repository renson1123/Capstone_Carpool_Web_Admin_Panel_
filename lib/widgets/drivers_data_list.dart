import 'package:capstone_web_admin_panel_carpool/methods/common_methods.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class DriversDataList extends StatefulWidget
{
  const DriversDataList({super.key});

  @override
  State<DriversDataList> createState() => _DriversDataListState();
}

class _DriversDataListState extends State<DriversDataList>
{
  final driversRecordsFromDatabase = FirebaseDatabase.instance.ref().child("drivers");
  CommonMethods cMethods = new CommonMethods();

  @override
  Widget build(BuildContext context)
  {
    return StreamBuilder(
        stream: driversRecordsFromDatabase.onValue,
        builder: (BuildContext context, snapshotData)
        {
          if (snapshotData.hasError)
          {
            return const Center(
              child: Text(
                "Error Occured. Try again later.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.pink,
                ),
              ),
            );
          }

          // If internet connection is slow or minimum speed
          if (snapshotData.connectionState == ConnectionState.waiting)
          {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          Map dataMap = snapshotData.data!.snapshot.value as Map;
          List itemsList = [];
          dataMap.forEach((key, value)
          {
            itemsList.add({"key": key, ...value});
          });

          return ListView.builder(
              shrinkWrap: true,
              itemCount: itemsList.length,
              itemBuilder: ((context, index)
              {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cMethods.data(1,
                        Text(itemsList[index]["id"].toString()),
                    ),
                    cMethods.data(1,
                      Text(itemsList[index]["firstName"].toString()),
                    ),
                    cMethods.data(1,
                      Text(itemsList[index]["middleName"].toString()),
                    ),
                    cMethods.data(1,
                      Text(itemsList[index]["lastName"].toString()),
                    ),
                    cMethods.data(1,
                      Text(itemsList[index]["phone"].toString()),
                    ),
                    cMethods.data(1,
                      Text(itemsList[index]["email"].toString()),
                    ),
                    cMethods.data(1,
                      Text(itemsList[index]["employeeNumber"].toString()),
                    ),
                    cMethods.data(1,
                      Image.network(itemsList[index]["licenseFrontFile"].toString(),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    cMethods.data(1,
                      Image.network(itemsList[index]["licenseBackFile"].toString(),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    cMethods.data(1,
                      Image.network(itemsList[index]["medicalCertFile"].toString(),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    cMethods.data(
                      1,
                      itemsList[index]["blockStatus"] == "no" ?
                        ElevatedButton(
                          onPressed: ()
                              {

                              },
                          child: const Text(
                            "Block",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ) : ElevatedButton(
                          onPressed: ()
                          {

                          },
                          child: const Text(
                            "Approved",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ),
                  ],
                );
              }),
          );
        },
    );
  }
}
