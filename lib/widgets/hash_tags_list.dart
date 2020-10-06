import 'package:flutter/material.dart';
import 'package:my_user_interfaces/utilities/utility.dart';


class HashTagRowWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Resp.screenHeight(6, context),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(width: Resp.screenWidth(6, context),),
          HashTagWidget(color: Colors.purple,label: "Action",),
          HashTagWidget(color: Colors.yellow[600],label: "Platformer",),
          HashTagWidget(color: Colors.green,label: "Driving",),
        ],
      ),
    );
  }
}

class HashTagWidget extends StatelessWidget {

  Color color;
  String label;

   HashTagWidget({
    this.label,this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Resp.screenWidth(2.5, context)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color.withOpacity(0.2),
        ),
        child: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "#$label",
              textAlign: TextAlign.center,
              style: TextStyle(color: color,fontWeight: FontWeight.bold,fontSize: Resp.screenWidth(3.5, context)),
            ),
          ),
        ),
      ),
    );
  }
}
