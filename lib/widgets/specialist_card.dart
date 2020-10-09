import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialistCard extends StatelessWidget {
  final String name;
  final String doctor;
  final String icon;
  final Color color;
  SpecialistCard({this.color, this.doctor, this.icon, this.name});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 110.0,
      margin: EdgeInsets.only(left: 18.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.0),
        color: color,
      ),
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            icon,
            width: 45.0,
            color: Colors.white,
          ),
          SizedBox(height: 12.0),
          Text(
            name,
            textAlign: TextAlign.center,
            style: theme.textTheme.headline3.copyWith(height: 1.0,color: Colors.white),
          ),
          SizedBox(height: 5.0),
          Text("$doctor Doctors",
              style: theme.textTheme.subtitle2.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
