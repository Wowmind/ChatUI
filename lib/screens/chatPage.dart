import 'package:flutter/material.dart';
import 'package:login_ui/models/chatUserModel.dart';
import 'package:login_ui/widgets/conversationList.dart';

class chatPage extends StatefulWidget {
  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  List <chatUsers> ChatUsers = [
    chatUsers (name: 'Jane Molly', messageText: 'awesome night', imageURL: 'assets/jane.jpg', time: 'Today'),
    chatUsers (name: 'Brad Pitt', messageText: 'I saw your missed calls', imageURL: 'assets/pitt.jpg', time: 'Yesterday'),
    chatUsers (name: 'Krisna Rahr', messageText: 'I saw your missed calls', imageURL: 'assets/rahr.jpg', time: 'April 9'),
    chatUsers (name: 'Laura', messageText: 'I love you', imageURL: 'assets/laura.jpg', time: 'March 31'),
    chatUsers (name: 'Greg', messageText: 'Guy where you at', imageURL: 'assets/dark.jpg', time: ' March 19'),
    chatUsers (name: 'Winni', messageText: 'I am pregnant', imageURL: 'assets/wini.webp', time: 'March 1'),
    chatUsers (name: 'Betty', messageText: 'still game tonight', imageURL: 'assets/betty.jpg', time: 'February 27'),
    chatUsers (name: 'Viktor', messageText: 'Cmon mehn', imageURL: 'assets/viktor.jpeg', time: 'Jan 1'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0,),
            SafeArea(child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Conversations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                  ),),
                  Container(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0, bottom: 2.0),
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.pink[50],
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add, color: Colors.pink,size: 20,
                        ),
                        SizedBox(width: 2.0,),
                        Text('Add New', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ],
              ),
            )),
            Padding(padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search....',
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  prefixIcon: Icon(Icons.search, size: 20, color: Colors.grey[600]),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Column(
              children: <Widget>[
                ListView.builder(
                    itemCount: ChatUsers.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16.0),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                      return ConversationList(
                        name: ChatUsers[index].name,
                        messageText: ChatUsers[index].messageText,
                        imageUrl: ChatUsers[index].imageURL,
                        time: ChatUsers[index].time,
                        isMessageRead: (index ==0 || index ==3)?true:false,
                      );
                  },

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
