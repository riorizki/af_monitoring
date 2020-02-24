import 'package:af_monitoring/ui/widgets/lampWidget.dart';
import 'package:flutter/material.dart';

class DoubleLampWidget extends StatelessWidget {
  final String title;
  final Color colorOne;
  final Color colorTwo;

  DoubleLampWidget({this.title, this.colorOne, this.colorTwo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      child: Card(
        color: Color(0xff393c56),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 4.0,
            ),
            Text(
              '$title',
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Muli',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                LampWidget(color: colorOne),
                LampWidget(color: colorTwo),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
