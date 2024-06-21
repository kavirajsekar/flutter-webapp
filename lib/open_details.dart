import 'package:flutter/material.dart';

class CandidateDetailsScreen extends StatefulWidget {
  @override
  _CandidateDetailsScreenState createState() => _CandidateDetailsScreenState();
}

class _CandidateDetailsScreenState extends State<CandidateDetailsScreen> {
  int? _selectedCandidateRow;
  bool _showDetails = true;

  final List<Map<String, String>> _candidateDetailsData = [
    {
      'candidateName': 'Avinash',
      'experience': '5 years',
      'delearName': 'DealerA',
      'doj': '25/01/2024',
      'lastCtc': '5 LPA',
      'expectation': '6 LPA',
      'photoUrl': 'assets/cproject4.jpg',
      'photoUrl2': 'assets/africa.jpg',
      'candidateNumber': '125',
      'bloodGroup': 'A+ve',
      'PhoneNumber': '8976543210',
      'Address': 'No.18,LMT layout,silkboard,Bengaluru',
      'status': 'Pending', // Add status field
    },
    {
      'candidateName': 'Sawapneshwar',
      'experience': '3 years',
      'delearName': 'DealerB',
      'doj': '05/02/2024',
      'lastCtc': '3 LPA',
      'expectation': '5 LPA',
      'photoUrl': 'assets/cproject1.png',
      'photoUrl2': 'assets/africa.jpg',
      'candidateNumber': '165',
      'bloodGroup': 'o+ve',
      'PhoneNumber': '89765776510',
      'Address': 'No.18,LMT layout,silkboard,Bengaluru',
      'status': 'Pending', // Add status field
    },
    {
      'candidateName': 'Justine',
      'experience': '3 years',
      'delearName': 'DealerC',
      'doj': '08/03/2024',
      'lastCtc': '3 LPA',
      'expectation': '7LPA',
      'photoUrl': 'assets/cproject2.png',
      'photoUrl2': 'assets/africa.jpg',
      'candidateNumber': '005',
      'bloodGroup': 'A-ve',
      'PhoneNumber': '8900543210',
      'Address': 'No.138,BTM layout,silkboard,Bengaluru',
      'status': 'Pending', // Add status field
    },
    {
      'candidateName': 'Rosy',
      'experience': '3 years',
      'delearName': 'DealerD',
      'doj': '08/03/2024',
      'lastCtc': '4.5 LPA',
      'expectation': '7.5 LPA',
      'photoUrl': 'assets/cproject2.png',
      'photoUrl2': 'assets/africa.jpg',
      'candidateNumber': '005',
      'bloodGroup': 'A-ve',
      'PhoneNumber': '8900543210',
      'Address': 'No.008,BTM layout,silkboard,Bengaluru',
      'status': 'Pending', // Add status field
    },
    // Add more data as needed
  ];

  void _updateCandidateStatus(int index, String status) {
    setState(() {
      _candidateDetailsData[index]['status'] = status;
      _selectedCandidateRow = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Candidate Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Candidate List Table on the Left
            Expanded(
              child: SingleChildScrollView(
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
                          label: Text('Candidate Name',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Experience',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Last CTC',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Expectation',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Resume',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Status',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                    ],
                    rows: _candidateDetailsData.asMap().entries.map((entry) {
                      int index = entry.key;
                      Map<String, String> item = entry.value;
                      return DataRow(
                        cells: [
                          DataCell(Text((index + 1).toString())),
                          DataCell(Text(item['candidateName']!), onTap: () {
                            setState(() {
                              _selectedCandidateRow = index;
                              _showDetails = true;
                            });
                          }),
                          DataCell(Text(item['experience']!)),
                          DataCell(Text(item['lastCtc']!)),
                          DataCell(Text(item['expectation']!)),
                          DataCell(ElevatedButton(
                            onPressed: () {
                              // Handle resume download
                              print(
                                  'Download resume for ${item['candidateName']}');
                              setState(() {
                                _selectedCandidateRow = index;
                                _showDetails = false;
                              });
                            },
                            child: Text('View'),
                          )),
                          DataCell(Text(item['status']!)),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            // Candidate Details Identity Card on the Right
            Container(
              width: 350,
              child: _selectedCandidateRow != null
                  ? Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      elevation: 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _showDetails
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 13),
                                  Image.asset(
                                    _candidateDetailsData[
                                        _selectedCandidateRow!]['photoUrl2']!,
                                    width: 80,
                                    height: 80,
                                  ),
                                  SizedBox(height: 13),
                                  _buildDetailRow(
                                      'Name',
                                      _candidateDetailsData[
                                              _selectedCandidateRow!]
                                          ['candidateName']!),
                                  SizedBox(height: 13),
                                  _buildDetailRow(
                                      'Candidate No',
                                      _candidateDetailsData[
                                              _selectedCandidateRow!]
                                          ['candidateNumber']!),
                                  SizedBox(height: 13),
                                  _buildDetailRow(
                                      'Blood Group',
                                      _candidateDetailsData[
                                              _selectedCandidateRow!]
                                          ['bloodGroup']!),
                                  SizedBox(height: 13),
                                  _buildDetailRow(
                                      'Phone Number',
                                      _candidateDetailsData[
                                              _selectedCandidateRow!]
                                          ['PhoneNumber']!),
                                  SizedBox(height: 13),
                                  _buildDetailRow(
                                      'Address',
                                      _candidateDetailsData[
                                          _selectedCandidateRow!]['Address']!),
                                  SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          _updateCandidateStatus(
                                              _selectedCandidateRow!,
                                              'Approved');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green,
                                        ),
                                        child: Text(
                                          'Accept',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          _updateCandidateStatus(
                                              _selectedCandidateRow!,
                                              'Rejected');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                        ),
                                        child: Text('Reject',
                                            style:
                                                TextStyle(color: Colors.black)),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Image.asset(
                                _candidateDetailsData[_selectedCandidateRow!]
                                    ['photoUrl']!,
                                width: 300,
                                height: 450,
                              ),
                      ),
                    )
                  : SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildDetailRow(String title, String value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 120,
        child: Text(
          '$title: ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
        ),
      ),
      Container(
        width: 100,
        child: Text(
          value,
          style: TextStyle(fontSize: 14.0),
        ),
      ),
    ],
  );
}
