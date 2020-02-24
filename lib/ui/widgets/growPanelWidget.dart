import 'package:flutter/material.dart';

class GrowPanelWidget extends StatelessWidget {
  final String title;

  const GrowPanelWidget({
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 340.0,
      child: Card(
        color: Color(0xff393c56),
        child: RotatedBox(
            quarterTurns: 1,
            child: Center(
              child: Text(
                '$title',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Muli',
                ),
              ),
            )),
      ),
    );
  }
}
