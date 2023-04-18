// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:quran_app/utils/info.dart';
import 'package:quran_app/widgets/my_message_card.dart';
import 'package:quran_app/widgets/sender_message_card.dart';
class WebChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
        itemBuilder: (context, index){
        if(messages[index]['isMe'] == true){
          // myMessage Card
          return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString(),
          );
        }
        else {
          // senderMessage Card
          return SenderMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString(),
          );
        }
        });
  }
}
