import 'package:flutter/material.dart';

class PersonalDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Personal Data',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor:Color.fromARGB(255, 238, 112, 44),
        iconTheme: IconThemeData(
          color: Colors.black, // Set the return icon color to black
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/avatar.png'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Ridwan',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Email: ridwan@gmail.com',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'No. : 081122223333',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Edit Personal Data
              },
              child: Text('Edit Data Pribadi'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 245, 93, 11), // Set the button background color to orange
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}