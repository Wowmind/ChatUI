import 'package:flutter/material.dart';
import 'package:login_ui/screens/chatPage.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chatPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle:  TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message),
            title: Text('Chats')
          ),
          BottomNavigationBarItem(icon: Icon(Icons.group_work),
              title: Text('Channels')
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_box),
              title: Text('Profile')
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
              title: Text('Settings')
          ),
        ],

      ),
    );
  }
}
