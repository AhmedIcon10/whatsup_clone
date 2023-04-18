// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_function_literals_in_foreach_calls, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:quran_app/shared/components.dart';
import 'package:quran_app/utils/colors.dart';
import 'package:quran_app/utils/info.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => contactItem(context, index),
        itemCount: info.length);
  }
}

Widget contactItem(context, index) => Material(
      child: Container(
        height: 80,
        color: backGroundColor,
        child: ListTile(
          onTap: () {},
          title: Text(
            info[index]['name'].toString(),
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              info[index]['message'].toString(),
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
          ),
          trailing: Text(info[index]['time'].toString(),
          style: TextStyle(
            fontSize: 12
          ),
          ),
        ),
      ),
    );
