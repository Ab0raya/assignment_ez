import 'package:assignments/Medical%20app/widgets.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 40,
            color: Colors.white,
          ),
          onPressed: (){Navigator.of(context).pop();},
        ),
        elevation: 0,
        backgroundColor: const Color(0xff7165d3),
        actions: const [
          Icon(
            Icons.more_vert_rounded,
            size: 40,
            color: Colors.white,
          ),
        ],
      ),
      backgroundColor: const Color(0xff7165d3),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images2/doctor4.jpg'),
              ),
              themText(
                  isBold: false,
                  text: 'Dr. Doctor name',
                  size: 30,
                  color: Colors.white),
              themText(
                  isBold: false,
                  text: 'Dr. Doctor name',
                  size: 20,
                  color: Colors.white),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.2),
                      radius: 30,
                      child: const Icon(Icons.phone, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.2),
                      radius: 30,
                      child: const Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(32))),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      themText(
                        isBold: true,
                        text: 'about doctor',
                        size: 25,
                        color: Colors.black,
                      ),
                      themText(
                        isBold: false,
                        text:
                            'dfdfs dfdf sdfsdfsdfs dfc\nsdfsdfsd fs dfsdfsdf sdfsdfd',
                        size: 18,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          themText(
                              isBold: false,
                              text: 'Reviews   ',
                              size: 22,
                              color: Colors.black),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          themText(
                            isBold: false,
                            text: '(124)',
                            size: 18,
                            color: Colors.grey,
                          ),
                          const Spacer(),
                          themText(
                            isBold: true,
                            text: 'See all',
                            size: 18,
                            color: const Color(0xff7165d3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return CustomContainer(
                                lMargin: 10,
                                tMargin: 10,
                                rMargin: 10,
                                bMargin: 10,
                                lPadding: 10,
                                tPadding: 10,
                                rPadding: 10,
                                bPadding: 10,
                                width: 400,
                                height: 200,
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 30,
                                          backgroundImage: AssetImage(
                                              'assets/images2/doctor1.jpg'),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            themText(
                                                isBold: false,
                                                text: 'Dr. Ahmed Sayed ali',
                                                size: 22,
                                                color: Colors.black),
                                            themText(
                                                isBold: false,
                                                text: 'Profile',
                                                size: 15,
                                                color: Colors.grey),
                                          ],
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        themText(
                                          isBold: false,
                                          text: '4.9',
                                          size: 18,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    themText(
                                      isBold: false,
                                      text:
                                          'I’m working on a sweet potato farm.\nEverybody should read Chaucer ',
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: themText(
                          isBold: true,
                          text: 'Location',
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                const Color(0xff7165d3).withOpacity(0.2),
                            child: const Icon(
                              Icons.location_on,
                              color: Color(0xff7165d3),
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              themText(
                                  isBold: true,
                                  text: 'New York,Medical center',
                                  size: 18,
                                  color: Colors.black),
                              themText(
                                  isBold: false,
                                  text: 'address line of the medical center',
                                  size: 15,
                                  color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, -5),
                      blurRadius: 5,
                      spreadRadius: 2,
                    )
                  ]),
                  child: Column(
                    children: [
                      Row(children: [
                        themText(isBold: false, text: "Examination price", size: 26, color: Colors.grey,),
                        const Spacer(),
                        themText(isBold: true, text: "100\$", size: 20, color: Colors.black,),
                      ],),
                      CustomButton(text: 'Book Appointment', width: double.infinity, onTap: (){}, bgColor: const Color(0xff7165d3), textSize: 22, textColor: Colors.white)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
