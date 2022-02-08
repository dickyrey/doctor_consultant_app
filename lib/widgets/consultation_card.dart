import 'package:doctor_consultation/helpers/colors.dart';
import 'package:doctor_consultation/models/doctor.dart';
import 'package:flutter/material.dart';

class ConsultationCard extends StatelessWidget {
  final Consultation consultation;

  const ConsultationCard({Key? key, required this.consultation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.only(left: 18.0, bottom: 5.0),
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: 250.0,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Container(
                width: 70.0,
                height: 30.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kGreenColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                  ),
                ),
                child: Text(
                  "\$${consultation.price}",
                  style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 30.0,
              left: 15.0,
              right: 18.0,
              bottom: 15.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(consultation.title, style: theme.textTheme.headline3),
                  const SizedBox(height: 15.0),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 2.0,
                          color: kGreenColor,
                        ),
                        const SizedBox(width: 12.0),
                        Expanded(
                          child: Text(consultation.subtitle,
                              style: theme.textTheme.subtitle2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
