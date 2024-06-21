import 'package:flutter/material.dart';
import 'package:webapplication/Delear_Login/delear_hmpage.dart';
import 'package:webapplication/position_page.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Color section1Color = Colors.white;
  Color section2Color = Colors.white;

  _onSection1Pressed() {
    _showRoleDialog();
  }

  _onSection2Pressed() {
    _showRoleDialog();
  }

  _showRoleDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Role',
              style: TextStyle(fontWeight: FontWeight.bold)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Admin',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.pop(context); // Close the dialog
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PositionPage(),
                      ));
                },
              ),
              ListTile(
                title: Text('Manager',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.pop(context); // Close the dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PositionPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Dealer',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.pop(context); // Close the dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dhomepage()),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  section1Color = Color.fromARGB(255, 221, 192, 226);
                });
              },
              onExit: (_) {
                setState(() {
                  section1Color = Colors.white;
                });
              },
              child: GestureDetector(
                onTap: _onSection1Pressed,
                child: Container(
                  color:
                      section1Color, // Background color for the first section
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/trck.png', // Image for the first section
                        height: 350,
                        width: 700,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Applicant Tracking System',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  section2Color = Color.fromARGB(255, 221, 192, 226);
                });
              },
              onExit: (_) {
                setState(() {
                  section2Color = Colors.white;
                });
              },
              child: GestureDetector(
                onTap: _onSection2Pressed,
                child: Container(
                  color:
                      section2Color, // Background color for the second section
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/pms.png', // Image for the second section
                        height: 350,
                        width: 700,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Performance Management Systems',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class PositionPage extends StatelessWidget {
//   final String role;

//   PositionPage({required this.role});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('$role Page'),
//       ),
//       body: Center(
//         child: Text('Welcome to the $role page!'),
//       ),
//     );
//   }
// }

void main() {
  runApp(MaterialApp(
    home: SignIn(),
  ));
}
