import 'package:assignments/Medical%20app/messages_view.dart';
import 'package:assignments/Medical%20app/home_view.dart';
import 'package:assignments/Medical%20app/schedule_view.dart';
import 'package:assignments/Medical%20app/settings.dart';
import 'package:flutter/material.dart';

class MedicalNavigationView extends StatefulWidget {
  const MedicalNavigationView({super.key});

  @override
  State<MedicalNavigationView> createState() => _MedicalNavigationViewState();
}

class _MedicalNavigationViewState extends State<MedicalNavigationView> {
  int viewIndex = 0 ;
  List views = const [
    MedicalHomeView(),
    MessagesView(),
    ScheduleView(),
    SettingsView()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: views[viewIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff7165d3),
        unselectedItemColor: Colors.grey,
        currentIndex: viewIndex,
          items: const [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_filled)
              ,)
            ,BottomNavigationBarItem(
                label: "Messages",
                icon: Icon(Icons.message)
              ,),BottomNavigationBarItem(
                label: "Schedule",
                icon: Icon(Icons.calendar_month)
              ,)
            ,BottomNavigationBarItem(
                label: "Settings",
                icon: Icon(Icons.settings)
              ,),
          ],
        onTap: (index){
            setState(() {
              viewIndex = index ;
            });
        },
      ),
    );
  }


}


