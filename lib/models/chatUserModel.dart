import 'package:flutter/material.dart';

class chatUsers{
  String name;
  String messageText;
  String time;
  String imageURL;
  chatUsers({
    @required this.messageText,
    @required this.time,
    @required this.name,
    @required this.imageURL,
});
}