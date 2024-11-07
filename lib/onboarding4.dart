import 'package:flutter/material.dart';
import 'package:nsports/Screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InfoScreen2(),
    );
  }
}



class InfoScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Padding(
      padding: const EdgeInsets.only(top: 50.0, right: 20.0), // Adjust the padding as needed
      child: Align(
      alignment: Alignment.topRight,
      child: TextButton(
      onPressed: () {
       Navigator.pop(context);
      },
      child: Text(
        'Skip',
        style: TextStyle(color: Colors.grey),
      ),
    ),
  ),
)
,
            Spacer(),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'android/assets/Group3340.png',
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              'Search and Hire Players',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Looking for skilled players? Browse profiles and hire players for your team or event.',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              ),
              child: Text(
                'Get started',
                style: TextStyle(
                      fontSize: 18,
                      color: Colors.white, // Set text color to white inside TextStyle
                    ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
