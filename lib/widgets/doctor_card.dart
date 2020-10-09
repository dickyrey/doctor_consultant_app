import 'package:doctor_consultant_mobile_app/models/doctor.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;
  DoctorCard({this.doctor});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: EdgeInsets.only(left: 18.0, bottom: 2.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 150.0,
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: Image.asset(
                  doctor.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              doctor.name,
              overflow: TextOverflow.clip,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: theme.textTheme.headline3
            ),
            SizedBox(height: 6.0),
            Text(
              doctor.specialist,
              overflow: TextOverflow.clip,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: theme.textTheme.subtitle2
            ),
          ],
        ),
      ),
    );
  }
}
