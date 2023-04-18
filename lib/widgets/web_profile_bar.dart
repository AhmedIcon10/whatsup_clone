// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/info.dart';
class WebProfileBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width*.25,
        height: MediaQuery.of(context).size.height*.077,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: dividerColor,
            ),
          ),
          color: webAppBarColor,
        ),
        child: Row(
          children:
          [
            CircleAvatar(
              backgroundImage: NetworkImage(
                info[0]['profilePic'].toString(),
              ),
              radius: 20,
            ),
            Spacer(),
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.add,
                  size: 25,
                  color: Colors.grey,
                ),
              iconSize: 25,
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.more_horiz,
                  size: 20,
                  color: Colors.grey,
                ),
              iconSize: 30,
            ),



          ],
        ),
      ),
    );
  }
}
