import 'package:doctor_consultation/helpers/colors.dart';
import 'package:doctor_consultation/providers/theme_provider.dart';
import 'package:doctor_consultation/widgets/consultation_card.dart';
import 'package:doctor_consultation/widgets/doctor_card.dart';
import 'package:doctor_consultation/widgets/specialist_card.dart';
import 'package:flutter/material.dart';
import 'package:doctor_consultation/models/doctor.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: ListTile(
            leading: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: const DecorationImage(
                  image: AssetImage(
                      "assets/01-shutterstock_476340928-Irina-Bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("Melody", style: theme.textTheme.headline3),
            subtitle: Text(
              "Find your suitable doctor here",
              style: theme.textTheme.subtitle2,
            ),
            trailing: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: theme.cardColor,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.date_range,
                  color: kGreenColor,
                  size: 30.0,
                ),
                onPressed: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .changeTheme();
                },
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 45.0),
            Container(
              width: double.infinity,
              height: 50.0,
              margin: const EdgeInsets.symmetric(horizontal: 18.0),
              alignment: Alignment.center,
              child: const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: kPrimaryLightColor),
                  hintText: "Search doctor, categories, topic . . . .",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text("Specialist", style: theme.textTheme.headline3),
            ),
            const SizedBox(height: 15.0),
            SizedBox(
              width: double.infinity,
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  SpecialistCard(
                    name: "Cardio Specialist",
                    color: kGreenColor,
                    doctor: "27",
                    icon: "assets/lungs.svg",
                  ),
                  SpecialistCard(
                    name: "Heart\nIssue",
                    color: kBlueColor,
                    doctor: "57",
                    icon: "assets/doctor.svg",
                  ),
                  SpecialistCard(
                    name: "Dental\nCard",
                    color: kOrangeColor,
                    doctor: "17",
                    icon: "assets/dentist.svg",
                  ),
                  SpecialistCard(
                    name: "Physio\nTherapy",
                    color: kPurpleColor,
                    doctor: "32",
                    icon: "assets/wheelchair.svg",
                  ),
                  SpecialistCard(
                    name: "Eyes\nSpecialist",
                    color: kGreenColor,
                    doctor: "32",
                    icon: "assets/ophtalmology.svg",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            SizedBox(
              width: double.infinity,
              height: 150.0,
              child: ListView.builder(
                itemCount: consultationList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  var item = consultationList[index];
                  return ConsultationCard(consultation: item);
                },
              ),
            ),
            const SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: <Widget>[
                  Text("Top Doctor", style: theme.textTheme.headline3),
                  const Spacer(),
                  Text("View all", style: theme.textTheme.subtitle1),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 200.0,
              child: ListView.builder(
                itemCount: doctorList.length,
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var doctor = doctorList[index];

                  return DoctorCard(doctor: doctor);
                },
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
