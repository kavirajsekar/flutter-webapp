import 'package:flutter/material.dart';
import 'package:webapplication/open_details.dart';

class OpenPositionScreen extends StatefulWidget {
  @override
  _OpenPositionScreenState createState() => _OpenPositionScreenState();
}

class _OpenPositionScreenState extends State<OpenPositionScreen> {
  int? _selectedRow;

  final List<Map<String, dynamic>> _closedPositionsData = [
    {
      'sno': '1',
      'dealerName': 'Featherlite Living',
      'location': 'Kempapura Bangalore',
      'totalPosition': '10',
      'closed': '5',
      'open': '5',
      'profileSubmitted': '7',
      'fresher': '3',
      'experience': '4',
      'industrialExperience': '3',
    },
    {
      'sno': '2',
      'dealerName': 'Farsons Paints',
      'location': 'Bangalore Palace',
      'totalPosition': '15',
      'closed': '10',
      'open': '5',
      'profileSubmitted': '12',
      'fresher': '6',
      'experience': '5',
      'industrialExperience': '4',
    },
    {
      'sno': '3',
      'dealerName': 'M M Electricals',
      'location': 'Cubbon Park',
      'totalPosition': '15',
      'closed': '10',
      'open': '5',
      'profileSubmitted': '12',
      'fresher': '5',
      'experience': '4',
      'industrialExperience': '3',
    },
    {
      'sno': '4',
      'dealerName': 'Vst Central Kia',
      'location': 'Yeshwanthpur',
      'totalPosition': '15',
      'closed': '10',
      'open': '5',
      'profileSubmitted': '12',
      'fresher': '4',
      'experience': '5',
      'industrialExperience': '3',
    },
    // Add more data as needed
  ];

  void _showDetailsDialog(
      BuildContext context, String title, Map<String, dynamic> data) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$title Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DataTable(
                columns: [
                  DataColumn(
                      label: Text(
                    'Category',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  DataColumn(
                      label: Text('Number',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Fresher')),
                    DataCell(Text(data['fresher'])),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Experience')),
                    DataCell(Text(data['experience'])),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Industrial Experience')),
                    DataCell(Text(data['industrialExperience'])),
                  ]),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Open Positions'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: DataTable(
                    columns: [
                      DataColumn(
                          label: Text('S.No',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Dealer Name',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Location',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Total Position',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Closed',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Open',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Profile Submitted',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Edit',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Delete',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Next Page',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                    ],
                    rows: _closedPositionsData.map((item) {
                      return DataRow(
                        cells: [
                          DataCell(Text(item['sno']!), onTap: () {
                            setState(() {
                              _selectedRow = int.parse(item['sno']!);
                            });
                          }),
                          DataCell(Text(item['dealerName']!)),
                          DataCell(Text(item['location']!)),
                          DataCell(
                            Text(item['totalPosition']!),
                            onTap: () {
                              _showDetailsDialog(
                                  context, 'Total Position', item);
                            },
                          ),
                          DataCell(
                            Text(item['closed']!),
                            onTap: () {
                              _showDetailsDialog(context, 'Closed', item);
                            },
                          ),
                          DataCell(
                            Text(item['open']!),
                            onTap: () {
                              _showDetailsDialog(context, 'Open', item);
                            },
                          ),
                          DataCell(
                            Text(item['profileSubmitted']!),
                            onTap: () {
                              _showDetailsDialog(
                                  context, 'Profile Submitted', item);
                            },
                          ),
                          DataCell(IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              // Handle edit action here
                            },
                          )),
                          DataCell(IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              // Handle delete action here
                            },
                          )),
                          DataCell(IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CandidateDetailsScreen(),
                                ),
                              );
                            },
                          )),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CandidateDetailsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Candidate Details'),
//       ),
//       body: Center(
//         child: Text('Candidate details will be shown here.'),
//       ),
//     );
//   }
// }
