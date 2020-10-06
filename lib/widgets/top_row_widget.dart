import 'package:flutter/material.dart';
import 'package:my_user_interfaces/utilities/utility.dart';

class TopRowWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 6, child: TopIconsRowWidgets()),
        Expanded(flex: 1, child: ProfilePicture())
      ],
    );
  }
}

class ProfilePicture extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: EdgeInsets.only(right: Resp.screenWidth(4, context)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'images/logan.jpg',
        ),
      ),
    );
  }
}

class TopIconsRowWidgets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: Resp.screenWidth(7, context)),
          child: PlayButtonIcon(),
        ),
        Padding(
          padding: EdgeInsets.only(right: Resp.screenWidth(7, context)),
          child: NotificationIcon(),
        ),
        Icon(
          Icons.search,
          size: Resp.screenWidth(8, context),
          color: Colors.black,
        ),
      ],
    );
  }
}

class PlayButtonIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.blueAccent[100].withOpacity(0.2),
            blurRadius: 15,
            spreadRadius: 5,
            offset: Offset(0, 0))
      ]),
      child: Icon(Icons.play_circle_filled,
          size: Resp.screenWidth(12, context), color: Colors.deepPurpleAccent[400]),
    );
  }
}

class NotificationIcon extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Icons.notifications,
          size: Resp.screenWidth(8, context),
        ),
        Positioned(
            top: 1,
            right: 3,
            child: Icon(
              Icons.brightness_1,
              size: 13,
              color: Colors.cyan,
            ))
      ],
    );
  }
}
