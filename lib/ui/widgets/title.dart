import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 24.0,
        left: 18.0,
        bottom: 8.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Image.asset(
              'assets/af-logo-mark.png',
              scale: 25,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  top: 16.0,
                  bottom: 2.0,
                ),
                child: Text(
                  'Autonomous',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 29.0,
                    fontFamily: 'Muli',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  top: 2.0,
                ),
                child: Text(
                  'Farming',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 29.0,
                    fontFamily: 'Muli',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  top: 8.0,
                ),
                child: Text(
                  'Monitoring',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Nexa',
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
