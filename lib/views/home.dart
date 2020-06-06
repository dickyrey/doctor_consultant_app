import 'package:doctor_consultant_mobile_app/constants.dart';
import 'package:doctor_consultant_mobile_app/widgets/consultation_card.dart';
import 'package:doctor_consultant_mobile_app/widgets/doctor_card.dart';
import 'package:doctor_consultant_mobile_app/widgets/specialist_card.dart';
import 'package:flutter/material.dart';
import 'package:doctor_consultant_mobile_app/models/doctor.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: ListTile(
            leading: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/01-shutterstock_476340928-Irina-Bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("Melody", style: kTitleStyle),
            subtitle: Text("Find your suitable doctor here",
                style: kSubtitleStyle.copyWith(fontSize: 12.0)),
            trailing: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: kGrey,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.date_range,
                  color: kGreen,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 45.0),
              Container(
                width: double.infinity,
                height: 50.0,
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0),
                  border: Border.all(color: kBlack.withOpacity(.2)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search, color: kBlack),
                    hintText: "Search doctor, categories, topic . . . .",
                    hintStyle: kSubtitleStyle.copyWith(
                      color: kBlack.withOpacity(.4),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text("Specialist", style: kTitleStyle),
              ),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    SpecialistCard(
                      name: "Cardio Specialist",
                      color: kGreen,
                      doctor: "27",
                      icon: "assets/lungs.svg",
                    ),
                    SpecialistCard(
                      name: "Heart\nIssue",
                      color: kBlue,
                      doctor: "57",
                      icon: "assets/doctor.svg",
                    ),
                    SpecialistCard(
                      name: "Dental\nCard",
                      color: kOrange,
                      doctor: "17",
                      icon: "assets/dentist.svg",
                    ),
                    SpecialistCard(
                      name: "Physio\nTherapy",
                      color: kPurple,
                      doctor: "32",
                      icon: "assets/wheelchair.svg",
                    ),
                    SpecialistCard(
                      name: "Eyes\nSpecialist",
                      color: kGreen,
                      doctor: "32",
                      icon: "assets/ophtalmology.svg",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 150.0,
                child: ListView.builder(
                  itemCount: consultationList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var item = consultationList[index];
                    return ConsultationCard(consultation: item);
                  },
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: <Widget>[
                    Text("Top Doctor", style: kTitleStyle),
                    Spacer(),
                    Text("View all", style: kSubtitleStyle),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 200.0,
                child: ListView.builder(
                  itemCount: doctorList.length,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var doctor = doctorList[index];

                    return DoctorCard(doctor: doctor);
                  },
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
