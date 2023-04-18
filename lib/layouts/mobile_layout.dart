// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quran_app/modules/contacts_screen/calls_screen.dart';
import 'package:quran_app/modules/contacts_screen/contacts_screen.dart';
import 'package:quran_app/modules/contacts_screen/status_screen.dart';
import 'package:quran_app/utils/colors.dart';

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: false,
            actions:
            [
              IconButton(
                onPressed: (){},
                icon: Icon(
                    Icons.search
                ),
                color: Colors.grey,
              ),
              IconButton(
                onPressed: (){},
                icon: Icon
                  (
                    Icons.more_vert
                ),
                color: Colors.grey,
              ),
            ],
            bottom: TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs:
              [
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children:
            [
              ContactsScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            mini: true,
            backgroundColor: tabColor,
              onPressed: (){},
              child: Icon(
                Icons.message_sharp,
                color: Colors.white,
                size: 22,
              ),
          ),
        ),
    );
  }
}
