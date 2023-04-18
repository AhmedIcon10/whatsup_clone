// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:quran_app/utils/colors.dart';
class WebMessageInputBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width*.75,
        height:MediaQuery.of(context).size.height*.08,
        decoration: BoxDecoration(
          color: webAppBarColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children:
            [
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                      Icons.emoji_emotions_outlined,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width*.001,
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                      Icons.attach_file_outlined,
                    color: Colors.grey,
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: searchBarColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border(
                        top: BorderSide(
                          width: 1,
                          color: Colors.white60
                        ),
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white60
                        ), right: BorderSide(
                          width: 1,
                          color: Colors.white60
                        ),
                        left: BorderSide(
                          width: 1,
                          color: Colors.white60
                        ),
                      ),
                    ),
                    child: TextField(
                      onTap: (){},
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15)
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.mic,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width*.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
