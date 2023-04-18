// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quran_app/utils/colors.dart';

import '../utils/info.dart';

class WebChatAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: webAppBarColor,
        ),
        width: MediaQuery.of(context).size.width*.75,
        height: MediaQuery.of(context).size.height*.077,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children:
            [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  info[0]['profilePic'].toString()
                ),
                radius: 18,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*.01,
              ),
              Text(
                info[0]['name'].toString(),
              ),
              Spacer(),
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                iconSize: 20,
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
                iconSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
