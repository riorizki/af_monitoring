import 'package:af_monitoring/ui/widgets/lampWidget.dart';
import 'package:flutter/material.dart';

class SingleLampWidget extends StatelessWidget {
  final String title;
  final Color color;

  SingleLampWidget({this.title, this.color});

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
            LampWidget(color: color),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
