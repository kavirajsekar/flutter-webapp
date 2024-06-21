import 'package:flutter/material.dart';

class delear_positionscreen extends StatefulWidget {
  @override
  _delear_positionscreenState createState() => _delear_positionscreenState();
}

class _delear_positionscreenState extends State<delear_positionscreen> {
  int? _selectedCandidateRow;
  bool _showDetails = true;
  bool _showOfferLetter = false; // New flag to show offer letter

  final List<Map<String, String>> _candidateDetailsData = [
    {
      'candidateName': 'Sherry',
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
      'offerLetterUrl': 'assets/offer_project.png',
    },

    {
      'candidateName': 'Sawapneshwar',
      'experience': '3 years',
      'delearName': 'DealerB',
      'doj': '05/02/2024',
      'lastCtc': '3 LPA',
      'expectation': '5 LPA',
      'photoUrl': 'assets/cproject1.png', // Placeholder image URL
      'photoUrl2': 'assets/africa.jpg',
      'candidateNumber': '165',
      'bloodGroup': 'o+ve',
      'PhoneNumber': '89765776510',
      'Address': 'No.18,LMT layout,silkboard,Bengaluru',
      'offerLetterUrl': 'assets/offer_project.png',
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
      'offerLetterUrl': 'assets/offer_project.png', // Placeholder image URL
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
      'offerLetterUrl': 'assets/offer_project.png', // Placeholder image URL
    },

    {
      'candidateName': 'Lakshmi',
      'experience': '4 years',
      'delearName': 'DealerE',
      'doj': '24/03/2024',
      'lastCtc': '6 LPA',
      'expectation': '7.5 LPA',
      'photoUrl': 'assets/cproject2.png',
      'photoUrl2': 'assets/africa.jpg',
      'candidateNumber': '005',
      'bloodGroup': 'A-ve',
      'PhoneNumber': '8900543210',
      'Address': 'No.138,BTM layout,silkboard,Bengaluru',
      'offerLetterUrl': 'assets/offer_project.png', // Placeholder image URL
    },
    {
      'candidateName': 'Kavya',
      'experience': '4 years',
      'delearName': 'DealerF',
      'doj': '30/05/2024',
      'lastCtc': '6.9 LPA',
      'expectation': '7.5 LPA',
      'photoUrl': 'assets/cproject2.png',
      'photoUrl2': 'assets/africa.jpg',
      'candidateNumber': '005',
      'bloodGroup': 'A-ve',
      'PhoneNumber': '8900543210',
      'Address': 'No.138,BTM layout,silkboard,Bengaluru',
      'offerLetterUrl': 'assets/offer_project.png', // Placeholder image URL
    },
    {
      'candidateName': 'shri',
      'experience': '5 years',
      'delearName': 'DealerG',
      'doj': '29/05/2024',
      'lastCtc': '8 LPA',
      'expectation': '10 LPA',
      'photoUrl': 'assets/cproject2.png',
      'photoUrl2': 'assets/africa.jpg',
      'candidateNumber': '005',
      'bloodGroup': 'A-ve',
      'PhoneNumber': '8900543210',
      'Address': 'No.138,BTM layout,silkboard,Bengaluru',
      'offerLetterUrl': 'assets/offer_project.png', // Placeholder image URL
    },
    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Close position'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 10, right: 0), // Reduced padding for a tighter layout
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
                          label: Text('Dealer Name',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Date of Joining',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('CTC',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Resume',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Offer Letter',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))), // New column
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
                              _showOfferLetter =
                                  false; // Reset offer letter flag
                            });
                          }),
                          DataCell(Text(item['delearName']!)),
                          DataCell(Text(item['doj']!)),
                          DataCell(Text(item['expectation']!)),
                          DataCell(ElevatedButton(
                            onPressed: () {
                              // Handle resume download
                              print(
                                  'Download resume for ${item['candidateName']}');
                              setState(() {
                                _selectedCandidateRow = index;
                                _showDetails = false;
                                _showOfferLetter =
                                    false; // Reset offer letter flag
                              });
                            },
                            child: Text('View'),
                          )),
                          DataCell(ElevatedButton(
                            onPressed: () {
                              // Handle offer letter view
                              print(
                                  'View offer letter for ${item['candidateName']}');
                              setState(() {
                                _selectedCandidateRow = index;
                                _showDetails = false;
                                _showOfferLetter =
                                    true; // Set offer letter flag
                              });
                            },
                            child: Text('View'),
                          )),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            // Candidate Details Identity Card on the Right
            Container(
              width: 350, // Set a fixed width for ID card shape
              child: _selectedCandidateRow != null
                  ? Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      elevation: 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(
                            8.0), // Reduced padding inside the card
                        child: _showDetails
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .center, // Center the children horizontally
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 13),
                                  Image.asset(
                                    _candidateDetailsData[
                                        _selectedCandidateRow!]['photoUrl2']!,
                                    width: 80,
                                    height: 80,
                                  ),
                                  SizedBox(
                                      height:
                                          13), // Reduced spacing between elements
                                  _buildDetailRow(
                                    'Name',
                                    _candidateDetailsData[
                                            _selectedCandidateRow!]
                                        ['candidateName']!,
                                  ),
                                  SizedBox(height: 13),
                                  _buildDetailRow(
                                    'Candidate No',
                                    _candidateDetailsData[
                                            _selectedCandidateRow!]
                                        ['candidateNumber']!,
                                  ),
                                  SizedBox(height: 13),
                                  _buildDetailRow(
                                    'Blood Group',
                                    _candidateDetailsData[
                                        _selectedCandidateRow!]['bloodGroup']!,
                                  ),
                                  SizedBox(height: 13),
                                  _buildDetailRow(
                                    'Phone Number',
                                    _candidateDetailsData[
                                        _selectedCandidateRow!]['PhoneNumber']!,
                                  ),
                                  SizedBox(height: 13),
                                  _buildDetailRow(
                                    'Address',
                                    _candidateDetailsData[
                                        _selectedCandidateRow!]['Address']!,
                                  ),
                                  SizedBox(height: 15),
                                ],
                              )
                            : _showOfferLetter
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        _candidateDetailsData[
                                                _selectedCandidateRow!]
                                            ['offerLetterUrl']!,
                                        width: 300,
                                        height: 450,
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              // Handle the download action
                                              print('Download offer letter');
                                            },
                                            child: Text('Download'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        _candidateDetailsData[
                                                _selectedCandidateRow!]
                                            ['photoUrl']!,
                                        width: 300,
                                        height: 450,
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              // Handle the download action
                                              print('Download image');
                                            },
                                            child: Text('Download'),
                                          ),
                                        ],
                                      ),
                                    ],
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

  Widget _buildDetailRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center the row
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120, // Fixed width for the title column
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
}
