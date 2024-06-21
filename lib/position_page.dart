import 'package:flutter/material.dart';
import 'package:webapplication/open_positionScreen.dart';
import 'package:webapplication/hover_title.dart';
import 'package:webapplication/close_position.dart';

class PositionPage extends StatefulWidget {
  @override
  State<PositionPage> createState() => _PositionPageState();
}

class _PositionPageState extends State<PositionPage> {
  final GlobalKey<DrawerControllerState> _drawerKey =
      GlobalKey<DrawerControllerState>();
  bool isDrawerOpen = true;
  bool showCity = false; // Flag to control visibility of city list

  @override
  void initState() {
    super.initState();
    // Open the drawer initially
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _drawerKey.currentState?.open();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 164, 105, 236),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            isDrawerOpen ? Icons.menu : Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              if (isDrawerOpen) {
                _drawerKey.currentState?.close();
              } else {
                _drawerKey.currentState?.open();
              }
              isDrawerOpen = !isDrawerOpen;
            });
          },
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/hr_logo2.png',
              width: 150,
              height: 100,
            ),
            Text(
              'Project Name',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'john.doe@example.com',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          PopupMenuButton<int>(
            color: Colors.white,
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(value: 0, child: Text('Option 1')),
              PopupMenuItem<int>(value: 1, child: Text('Option 2')),
              PopupMenuItem<int>(value: 2, child: Text('Option 3')),
            ],
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: 200,
            child: DrawerController(
              key: _drawerKey,
              alignment: DrawerAlignment.start,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 225, 247),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    SizedBox(height: 10),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                      onTap: () {
                        // Handle section 1 tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Profile'),
                      onTap: () {
                        // Handle section 2 tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                      onTap: () {
                        // Handle section 3 tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.photo),
                      title: Text('Section 4'),
                      onTap: () {
                        // Handle section 4 tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.message),
                      title: Text('Section 5'),
                      onTap: () {
                        // Handle section 5 tap
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Position (20)',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10),
                                  Text(
                                    'Position',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          HoverableTile(
                                            title: 'Sales Executive',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                            },
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 0.2,
                                          ),
                                          HoverableTile(
                                            title: 'Sales Manager',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                              // Handle Sales Manager tap
                                            },
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 0.2,
                                          ),
                                          HoverableTile(
                                            title: 'Field Sales',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                              // Handle Field Sales tap
                                            },
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 0.2,
                                          ),
                                          HoverableTile(
                                            title: 'Sales Engineering',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                              // Handle Field Sales tap
                                            },
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 0.2,
                                          ),
                                          HoverableTile(
                                            title:
                                                'Business Development Manager',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                              // Handle Field Sales tap
                                            },
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 0.2,
                                          ),
                                          HoverableTile(
                                            title:
                                                'Inside Sales Representative',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                              // Handle Field Sales tap
                                            },
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 0.2,
                                          ),
                                          HoverableTile(
                                            title: 'Account Manager',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                              // Handle Field Sales tap
                                            },
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 0.2,
                                          ),
                                          HoverableTile(
                                            title:
                                                'Sales Development Representative',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                              // Handle Field Sales tap
                                            },
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 0.2,
                                          ),
                                          HoverableTile(
                                            title: 'Enterprise Sales Executive',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                              // Handle Field Sales tap
                                            },
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 0.2,
                                          ),
                                          HoverableTile(
                                            title: 'Sales Consultant',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                              // Handle Field Sales tap
                                            },
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 0.2,
                                          ),
                                          HoverableTile(
                                            title: 'Account representative',
                                            onTap: () {
                                              setState(() {
                                                // Toggle flag to show/hide city list
                                                showCity = !showCity;
                                              });
                                              // Handle Field Sales tap
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          showCity
                              ? Expanded(
                                  child: Card(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10),
                                        Text(
                                          'City',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.black,
                                          thickness: 1,
                                        ),
                                        Expanded(
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                HoverableTile(
                                                  title: 'Mumbai',
                                                  onTap: () {
                                                    setState(() {
                                                      showDialog(
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return AlertDialog(
                                                            contentPadding:
                                                                EdgeInsets.all(
                                                                    16.0),
                                                            content: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: <Widget>[
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: <Widget>[
                                                                    Text(
                                                                      'Total Requirements',
                                                                      style: TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    Text(
                                                                      '11',
                                                                      style: TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                    height: 10),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: <Widget>[
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        Navigator
                                                                            .push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                ClosedPositionScreen(),
                                                                          ),
                                                                        );
                                                                        // Add your onTap logic here
                                                                        print(
                                                                            'Closed button tapped');
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'Closed',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.red,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '07',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                    height: 10),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: <Widget>[
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        Navigator
                                                                            .push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                OpenPositionScreen(),
                                                                          ),
                                                                        );
                                                                        // Add your onTap logic here
                                                                        print(
                                                                            'Open button tapped');
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'Open',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.green,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '04',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .green,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            actions: <Widget>[
                                                              TextButton(
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                child: Text(
                                                                    'Close'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    });
                                                  },
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                  thickness: 0.2,
                                                ),
                                                HoverableTile(
                                                  title: 'Hyderabad',
                                                  onTap: () {
                                                    // Handle Sales Manager tap
                                                  },
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                  thickness: 0.2,
                                                ),
                                                HoverableTile(
                                                  title: 'Chennai',
                                                  onTap: () {
                                                    // Handle Field Sales tap
                                                  },
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                  thickness: 0.2,
                                                ),
                                                HoverableTile(
                                                  title: 'Kolkata',
                                                  onTap: () {
                                                    // Handle Field Sales tap
                                                  },
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                  thickness: 0.2,
                                                ),
                                                HoverableTile(
                                                  title: 'Pune',
                                                  onTap: () {
                                                    // Handle Field Sales tap
                                                  },
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                  thickness: 0.2,
                                                ),
                                                HoverableTile(
                                                  title: 'Surat',
                                                  onTap: () {
                                                    // Handle Field Sales tap
                                                  },
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                  thickness: 0.2,
                                                ),
                                                HoverableTile(
                                                  title: 'Jaipur',
                                                  onTap: () {
                                                    // Handle Field Sales tap
                                                  },
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                  thickness: 0.2,
                                                ),
                                                HoverableTile(
                                                  title: 'Warangal',
                                                  onTap: () {
                                                    // Handle Field Sales tap
                                                  },
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                  thickness: 0.2,
                                                ),
                                                HoverableTile(
                                                  title: 'Kochi',
                                                  onTap: () {
                                                    // Handle Field Sales tap
                                                  },
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                  thickness: 0.2,
                                                ),
                                                HoverableTile(
                                                  title: 'Bengaluru',
                                                  onTap: () {
                                                    // Handle Field Sales tap
                                                  },
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                  thickness: 0.2,
                                                ),
                                                HoverableTile(
                                                  title: 'Noida',
                                                  onTap: () {
                                                    // Handle Field Sales tap
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Expanded(
                                  child: Card(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10),
                                        Text(
                                          'City',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.black,
                                          thickness: 1,
                                        ),
                                        SizedBox(
                                          height: 120,
                                        ),
                                        Center(
                                            child: Text(
                                                'Please select the Position'))
                                      ],
                                    ),
                                  ),
                                ), // Render an empty container if showCity is false
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        // Handle option 1
        break;
      case 1:
        // Handle option 2
        break;
      case 2:
      // Handle option
    }
  }
}
