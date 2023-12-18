import 'package:assignments/Medical%20app/widgets.dart';
import 'package:flutter/material.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key});

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

int scheduleIndex = 1;

class _ScheduleViewState extends State<ScheduleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Schedule",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          scheduleBar(),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 50, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "About doctor",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomContainer(
                          lMargin: 20,tMargin: 15,rMargin: 20,bMargin: 15,
                          lPadding: 20,tPadding: 20,rPadding: 20,bPadding: 20,
                          width: double.infinity,
                          height: 265,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      themText(
                                        isBold: true,
                                        text: "Dr. Doctor Name",
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      themText(
                                        isBold: false,
                                        text: "Therapist",
                                        size: 16,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                        "assets/images2/doctor3.jpg"),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                                child: Divider(),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month,
                                        color: Colors.grey,
                                        size: 25,
                                      ),
                                      themText(isBold: false,
                                          text: "  11/2/2020",
                                          size: 17,
                                          color: Colors.grey),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.watch_later,
                                        color: Colors.grey,
                                        size: 25,
                                      ),
                                      themText(isBold: false,
                                          text: "  10:30 AM",
                                          size: 17,
                                          color: Colors.grey),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 7,
                                        backgroundColor: Colors.green,
                                      ),
                                      themText(isBold: false,
                                          text: " Confirmed",
                                          size: 17,
                                          color: Colors.grey),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(child: CustomButton(text: 'Cancel',
                                    width: 10,
                                    onTap: () {},
                                    bgColor: Colors.black.withOpacity(0.2),
                                    textSize: 20,
                                    textColor: Colors.black,)),
                                  Expanded(child: CustomButton(text: 'Reschedule',
                                    width: 10,
                                    onTap: () {},
                                    bgColor: const Color(0xff6d69d4),
                                    textSize: 20,
                                    textColor: Colors.white,)),
                                ],
                              ),
                            ],
                          ),
                      )
                    ],
                  );
                }
            ),
          )
        ],
      ),
    );
  }

  Container scheduleBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black.withOpacity(0.05)),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  scheduleIndex = 1;
                });
              },
              child: Container(
                width: 200,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: scheduleIndex == 1
                      ? const Color(0xff7165d3)
                      : const Color(0xfff2f2f2),
                ),
                child: Center(
                    child: Text(
                      "Upcoming",
                      style: TextStyle(
                        color: scheduleIndex == 1 ? Colors.white : Colors.grey,
                        fontSize: 21,
                      ),
                    )),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  scheduleIndex = 2;
                });
              },
              child: Container(
                width: 200,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: scheduleIndex == 2
                      ? const Color(0xff7165d3)
                      : const Color(0xfff2f2f2),
                ),
                child: Center(
                    child: Text(
                      "Completed",
                      style: TextStyle(
                        color: scheduleIndex == 2 ? Colors.white : Colors.grey,
                        fontSize: 21,
                      ),
                    )),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  scheduleIndex = 3;
                });
              },
              child: Container(
                width: 200,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: scheduleIndex == 3
                      ? const Color(0xff7165d3)
                      : const Color(0xfff2f2f2),
                ),
                child: Center(
                    child: Text(
                      "Canceled",
                      style: TextStyle(
                        color: scheduleIndex == 3 ? Colors.white : Colors.grey,
                        fontSize: 21,
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

