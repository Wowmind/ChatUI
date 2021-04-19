import 'package:flutter/material.dart';
import 'package:login_ui/models/chatMessageModel.dart';
class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List <ChatMessage>messages = [
    ChatMessage(messageContent: 'Hello, will', messageType: 'receiver'),
    ChatMessage(messageContent: 'How u dey', messageType: 'receiver'),
    ChatMessage(messageContent: 'Hey Betty, I dey oo. wbu?', messageType: 'sender'),
    ChatMessage(messageContent: 'I am fine, are you back home', messageType: 'receiver'),
    ChatMessage(messageContent: ' Yeah just got home, wetin dey', messageType: 'sender'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: (){
                  Navigator.pop(context);
                }),
                SizedBox(width: 2,),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/betty.jpg'),
                  maxRadius: 20,
                ),
                SizedBox(width: 12,),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 15.0,),
                        Text('Betty',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),),
                        SizedBox(height: 6,),
                        Text('Online',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey.shade600,
                        ),),

                      ],

                )),
                Icon(Icons.settings,
                  color: Colors.black54,),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          /*
          ListView.builder(
              itemCount: messages.length,
          shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
                return Container(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                  child: Text(messages[index].messageContent),
                );
            },
          ),
          */
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Icon(Icons.add, color: Colors.white,size: 20,),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write message',
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      border: InputBorder.none,
                    ),
                  )),
                  SizedBox(width: 15,),
                  FloatingActionButton(onPressed: () {},
                  child: Icon(
                    Icons.send, color: Colors.white, size: 18,
                  ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
