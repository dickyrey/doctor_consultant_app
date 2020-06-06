class Doctor {
  final String name;
  final String specialist;
  final String rating;
  final String reviews;
  final String academy;
  final String image;
  Doctor(
      {this.academy,
      this.name,
      this.rating,
      this.reviews,
      this.specialist,
      this.image});
}

class Consultation {
  final String title;
  final String subtitle;
  final String price;
  Consultation({this.price, this.subtitle, this.title});
}

List<Consultation> consultationList = [
  Consultation(
    title: "Cardio Issues?",
    price: "100",
    subtitle:
        "For cardio patient here can easily contact with doctor. Can chat & live chat.",
  ),
  Consultation(
    title: "Dental trouble?",
    price: "80",
    subtitle:
        "For dental patient here can easily contact with doctor. Can chat & live chat.",
  ),
  Consultation(
    title: "Heart Issues?",
    price: "250",
    subtitle:
        "For heart patient here can easily contact with doctor. Can chat & live chat.",
  ),
  Consultation(
    title: "Eyes Issues?",
    price: "500",
    subtitle:
        "For eyes patient here can easily contact with doctor. Can chat & live chat.",
  ),
  Consultation(
    title: "Therapist?",
    price: "50",
    subtitle:
        "For therapist patient here can easily contact with doctor. Can chat & live chat.",
  ),
];

List<Doctor> doctorList = [
  Doctor(
      name: "Dr. Jessica Vania",
      rating: "4.5",
      reviews: "80",
      specialist: "Cardiologist",
      academy: "Harvard Medical College Hospital",
      image:
          "assets/5-Ways-to-Help-Employees-Choose-the-Right-Primary-Care-Doctor--e1543342970537.jpg"),
  Doctor(
      name: "Dr. Mahmud Nik Hasan",
      rating: "4.9",
      reviews: "27",
      specialist: "Heart Surgeon",
      academy: "Dhaka Medical College Hospital",
      image: "assets/92019175-happy-doctor-with-clipboard-at-clinic.jpg"),
  Doctor(
      name: "Dr. Jessie McCaffrey",
      rating: "4.9",
      reviews: "27",
      specialist: "Therapist",
      academy: "Los Angeles Medical College Hospital",
      image: "assets/doctor-in-branding-article.jpg"),
  Doctor(
      name: "Dr. Justin Lathia",
      rating: "4.9",
      reviews: "27",
      specialist: "Dental",
      academy: "Miami Medical College Hospital",
      image: "assets/eIFBqS61.jpg"),
  Doctor(
      name: "Dr. Hayley Williams",
      rating: "4.9",
      reviews: "27",
      specialist: "Cardiologist",
      academy: "New York Medical College Hospital",
      image: "assets/file-20191203-66986-im7o5.jpg"),
  Doctor(
      name: "Dr. Sakura Miyawaki",
      rating: "4.9",
      reviews: "27",
      specialist: "Cardiologist",
      academy: "Tokyo University Medical College Hospital",
      image: "assets/national-doctors-day-1-920x518.jpg"),
];
