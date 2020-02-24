import 'package:af_monitoring/ui/widgets/lampWidget.dart';
import 'package:flutter/material.dart';

class LedPanelWidget extends StatelessWidget {
  final String title;
  final Color color;

  const LedPanelWidget({
    this.title,
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
                LampWidget(color: color),
                SizedBox(width: 12.0),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
          ],
        ),
      ),
    );
  }
}
