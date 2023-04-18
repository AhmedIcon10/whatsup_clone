// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quran_app/modules/contacts_screen/contacts_screen.dart';
import 'package:quran_app/widgets/web_chat_list.dart';
import 'package:quran_app/widgets/web_message_input_box.dart';
import 'package:quran_app/widgets/web_search_bar.dart';

import '../widgets/web_chat_app_bar.dart';
import '../widgets/web_profile_bar.dart';

class WebLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                WebProfileBar(),
                WebSearchBar(),
                ContactsScreen(),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .75,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/backgroundImage.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children:
            [
            // Chat App Bar
              WebChatAppBar(),
            // Chat List
              Expanded(child: WebChatList()),
            // Message Input Box
              WebMessageInputBox(),
            ],
          ),
        ),
      ],
    );
  }
}
