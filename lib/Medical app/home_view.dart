import 'package:assignments/Medical%20app/widgets.dart';
import 'package:flutter/material.dart';

class MedicalHomeView extends StatelessWidget {
  const MedicalHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Alex",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images2/doctor2.jpg'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: [
                    const CustomCard(
                      bgColor: Color(0xff7165d3),
                      circleBgColor: Colors.white,
                      circleIcon: Icons.add,
                      title: "Clinic visit",
                      subTitle: 'Make an appointment',
                      circleIconColor: Color(0xff7165d3),
                      txtColor: Colors.white,
                    ),
                    CustomCard(
                      bgColor: Colors.white,
                      circleBgColor:Colors.black.withOpacity(0.1),
                      circleIcon: Icons.home_filled,
                      title: "Home visit",
                      subTitle: 'Call the doctor home',
                      circleIconColor: const Color(0xff7165d3),
                      txtColor: Colors.black,
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "What are your symptoms ?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      categoryItem(text: 'Temperature'),
                      categoryItem(text: 'flue'),
                      categoryItem(text: 'headache'),
                      categoryItem(text: 'Atef'),
                      categoryItem(text: 'bawaswer'),
                    ],
                  )
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Doctors",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      DoctorItem(image: 'assets/images2/doctor4.jpg', name: "Dr. Ahmed"),
                      DoctorItem(image: 'assets/images2/doctor4.jpg', name: "Dr. Ahmed"),
                    ],
                  ),
                  Row(
                    children: [
                      DoctorItem(image: 'assets/images2/doctor4.jpg', name: "Dr. Ahmed"),
                      DoctorItem(image: 'assets/images2/doctor4.jpg', name: "Dr. Ahmed"),
                    ],
                  ),
                  Row(
                    children: [
                      DoctorItem(image: 'assets/images2/doctor4.jpg', name: "Dr. Ahmed"),
                      DoctorItem(image: 'assets/images2/doctor4.jpg', name: "Dr. Ahmed"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
