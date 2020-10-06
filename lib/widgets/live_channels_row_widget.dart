import 'package:flutter/material.dart';
import 'package:my_user_interfaces/utilities/utility.dart';

class LiveChannelsRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Resp.screenHeight(30, context),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(width: Resp.screenWidth(6, context),),
          ChannelWidget(
            imageNum: 1,
            tournamentPrice: 500,
            arenaName: "Esports Arena",
          ),
          ChannelWidget(
            imageNum: 2,
            tournamentPrice: 300,
            arenaName: "Cs2 Arena",
          ),
        ],
      ),
    );
  }
}

class ChannelWidget extends StatelessWidget {

  int imageNum;
  String arenaName;
  int tournamentPrice;

  ChannelWidget({this.imageNum,this.arenaName,this.tournamentPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Resp.screenWidth(3, context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'images/fall_guys_$imageNum.png',
                  width: Resp.screenWidth(70, context),
                ),
              ),
              Positioned(
                top: 10,
                left: 30,
                child: Row(
                  children: [
                    LiveTag(),
                    SizedBox(
                      width: Resp.screenHeight(1, context),
                    ),
                    ViewsTag()
                  ],
                ),
              ),
            ],
          ),
          ChannelTournamentDetailsWidget(arenaName: arenaName,tournamentPrice: tournamentPrice,)
        ],
      ),
    );
  }
}

class ChannelTournamentDetailsWidget extends StatelessWidget {

  final String arenaName;
  final int tournamentPrice;

  const ChannelTournamentDetailsWidget({Key key, this.arenaName, this.tournamentPrice}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Resp.screenWidth(3.5, context),left: Resp.screenWidth(2, context)),
      child: Row(
        children: [
          Stack(children: [
            Container(
              width: Resp.screenWidth(9, context),
              height: Resp.screenWidth(9, context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.deepPurple)),
            ),
            Positioned(
              left: Resp.screenWidth(2.0, context),
              top: Resp.screenWidth(1.75, context),
              child: Container(
                width: Resp.screenWidth(5, context),
                height: Resp.screenWidth(5, context),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/tournament_icon.jpg')),
                    shape: BoxShape.circle,
                ),
              ),
            ),

          ],),
          SizedBox(width: Resp.screenWidth(3, context),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(arenaName,style: TextStyle(fontSize: Resp.screenWidth(3, context),fontWeight: FontWeight.w600),),
              SizedBox(height: Resp.screenHeight(0.25, context),),
              Text('\$ $tournamentPrice Weekly Tournaments',
                style: TextStyle(fontSize: Resp.screenWidth(2.75, context),fontWeight: FontWeight.w300),)
            ],
          )
        ],
      ),
    );
  }
}

class ViewsTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black87.withOpacity(0.4),
          borderRadius: BorderRadius.circular(2)),
      child: Padding(
        padding: EdgeInsets.all(Resp.screenWidth(1, context)),
        child: Center(
          child: Row(
            children: [
              Icon(
                Icons.remove_red_eye,
                size: 12,
                color: Colors.white,
              ),
              SizedBox(
                width: Resp.screenWidth(1, context),
              ),
              Text(
                '8.2K',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Resp.screenWidth(2.5, context),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LiveTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(2)),
      child: Padding(
        padding: EdgeInsets.all(Resp.screenWidth(1, context)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.3),
              child: Icon(
                Icons.brightness_1,
                size: 8,
                color: Colors.red,
              ),
            ),
            Text(
              'LIVE',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: Resp.screenWidth(2, context),
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
