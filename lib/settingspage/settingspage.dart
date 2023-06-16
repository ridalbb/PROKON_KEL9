import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor:Color.fromARGB(255, 238, 112, 44),
        iconTheme: IconThemeData(
          color: Colors.black, // Set the return icon color to black
        ),
      ),
      body: ListView(
        children: [
          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text('Profile'),
          //   onTap: () {
          //     // Navigate to Profile page
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => ProfilePage()),
          //     );
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {
              // Navigate to Notifications page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Privacy & Security'),
            onTap: () {
              // Navigate to Privacy & Security page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacySecurityPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            onTap: () {
              // Navigate to Language page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguagePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help & Support'),
            onTap: () {
              // Navigate to Help & Support page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpSupportPage()),
              );
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.logout),
          //   title: Text('Log Out'),
          //   onTap: () {
          //     // Perform log out logic
          //     // ...
          //   },
          // ),
        ],
      ),
    );
  }
}

// Example sub-pages of SettingsPage for demonstration purposes
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Profile',
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor:Color.fromARGB(255, 238, 112, 44),
//         iconTheme: IconThemeData(
//           color: Colors.black, // Set the return icon color to black
//         ),
//       ),
//       body: Center(
//         child: Text(
//           'Profile Page',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor:Color.fromARGB(255, 238, 112, 44),
        iconTheme: IconThemeData(
          color: Colors.black, // Set the return icon color to black
        ),
      ),
      body: Center(
        child: Text(
          'Notifications Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class PrivacySecurityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Privacy & Security',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor:Color.fromARGB(255, 238, 112, 44),
        iconTheme: IconThemeData(
          color: Colors.black, // Set the return icon color to black
        ),
      ),
      body: Center(
        child: Text(
          'Privacy & Security Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Language',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor:Color.fromARGB(255, 238, 112, 44),
        iconTheme: IconThemeData(
          color: Colors.black, // Set the return icon color to black
        ),
      ),
      body: Center(
        child: Text(
          'Language Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class HelpSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Help & Support',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor:Color.fromARGB(255, 238, 112, 44),
        iconTheme: IconThemeData(
          color: Colors.black, // Set the return icon color to black
        ),
      ),
      body: Center(
        child: Text(
          'Help & Support Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}