import 'package:flutter/material.dart';
import 'package:my_user_interfaces/utilities/utility.dart';
import 'package:my_user_interfaces/widgets/hash_tags_list.dart';
import 'package:my_user_interfaces/widgets/live_channels_row_widget.dart';
import 'package:my_user_interfaces/widgets/top_categories_widget.dart';
import 'package:my_user_interfaces/widgets/top_row_widget.dart';

class FallGuysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EdgeInsets standardHorizontalLeftPadding =
    EdgeInsets.only(left: Resp.screenWidth(6, context));

    Widget esportsText() {
      return Padding(
        padding: standardHorizontalLeftPadding,
        child: Text(
          'Esports',
          style: TextStyle(
              color: Colors.black87,
              fontSize: Resp.screenWidth(7, context),
              fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget liveChannelText() {
      return Padding(
        padding: standardHorizontalLeftPadding,
        child: Text(
        'Live Channels',
        style: TextStyle(
            color: Colors.black87,
            fontSize: Resp.screenWidth(6, context),
            fontWeight: FontWeight.bold),
      ),);
    }

    Widget topCategoriesText() {
      return Padding(
        padding: standardHorizontalLeftPadding,
        child: Text(
          'Top Categories',
          style: TextStyle(
              color: Colors.black87,
              fontSize: Resp.screenWidth(4.75, context),
              fontWeight: FontWeight.bold),
        ),
      );
    }

    List<BottomNavigationBarItem> bottomNavItems = [
      BottomNavigationBarItem(
        icon: Icon(Icons.my_location),
        title: Text(''),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.cast),
        title: Text(''),
      ),
      BottomNavigationBarItem(icon: Icon(Icons.thumb_up), title: Text('')),
      BottomNavigationBarItem(
        icon: Icon(Icons.outlined_flag),
        title: Text(''),
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(top: Resp.screenWidth(8, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: standardHorizontalLeftPadding,
                child: TopRowWidget(),
              ),
              SizedBox(
                height: Resp.screenHeight(3, context),
              ),
              esportsText(),
              SizedBox(
                height: Resp.screenHeight(3, context),
              ),
              HashTagRowWidget(),
              SizedBox(
                height: Resp.screenHeight(6, context),
              ),
              liveChannelText(),
              SizedBox(
                height: Resp.screenHeight(3, context),
              ),
              LiveChannelsRowWidget(),
              topCategoriesText(),
              SizedBox(
                height: Resp.screenHeight(2, context),
              ),
              TopCategoriesWidget()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            unselectedIconTheme: IconThemeData(color: Colors.black54),
            selectedIconTheme: IconThemeData(color: Colors.deepPurple),
            iconSize: Resp.screenWidth(7, context),
            items: bottomNavItems),
      ),
    );
  }
}
