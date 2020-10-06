import 'package:flutter/material.dart';
import 'package:my_user_interfaces/utilities/utility.dart';

class TopCategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Resp.screenHeight(12, context),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(width: Resp.screenWidth(6, context),),
          GameWidget(
            categoryNumber: 1,
            gameName: "Fall Guys : Ultimate Edition",
            hashTag: "Action",
            viewerShip: 120,
          ),
          GameWidget(
            categoryNumber: 2,
            gameName: "DOTA 2",
            hashTag: "Action",
            viewerShip: 70,
          ),
          SizedBox(width: Resp.screenWidth(3, context),),

        ],
      ),
    );
  }
}

class GameWidget extends StatelessWidget {
  final int categoryNumber;
  final String gameName;
  final int viewerShip;
  final String hashTag;

  const GameWidget(
      {this.categoryNumber, this.gameName, this.viewerShip, this.hashTag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Resp.screenWidth(3, context)),
      child: Container(
        width: Resp.screenWidth(60, context),
        child: Row(
          children: [
            Expanded(
              child: Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'images/category$categoryNumber.jpg',
                  fit: BoxFit.fitWidth,
                ),
              )),
              flex: 25,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5, color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Resp.screenWidth(4, context),
                      vertical: Resp.screenWidth(2, context)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        gameName,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: Resp.screenWidth(3, context)),
                      ),
                      Container(
                        width: Resp.screenWidth(12, context),
                        color: Colors.lightBlue.withOpacity(0.1),
                        child: Padding(
                          padding: EdgeInsets.all(Resp.screenWidth(1, context)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.brightness_1,
                                size: 8,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: Resp.screenWidth(1, context),
                              ),
                              Text(
                                '$viewerShip K',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: Resp.screenWidth(2, context),
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "#$hashTag",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.deepPurple.withOpacity(0.75),
                            fontWeight: FontWeight.bold,
                            fontSize: Resp.screenWidth(3, context)),
                      )
                    ],
                  ),
                ),
              ),
              flex: 70,
            ),
          ],
        ),
      ),
    );
  }
}
