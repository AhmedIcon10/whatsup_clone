// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:quran_app/utils/colors.dart';
class WebSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          width: MediaQuery.of(context).size.width*.25,
          height: MediaQuery.of(context).size.height*.06,
          decoration: BoxDecoration(
            color: backGroundColor
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: webAppBarColor,
                  border: Border(
                    bottom: BorderSide(
                        color: dividerColor,
                        width: 1
                    ),
                    top: BorderSide(
                        color: dividerColor,
                        width: 1
                    ),
                    right: BorderSide(
                        color: dividerColor,
                        width: 1
                    ),
                    left: BorderSide(
                        color: dividerColor,
                        width: 1
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Icon(
                        Icons.search,
                        size: 15,
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14
                  ),
                  hintText: 'Search or start new chat',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),
                ),

              ),
            ),
          ),
        ));
  }
}
