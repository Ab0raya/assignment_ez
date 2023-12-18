import 'package:assignments/Medical%20app/register_view.dart';
import 'package:flutter/material.dart';

import 'navigation_view.dart';
import 'login_view.dart';
import 'widgets.dart';

class MedicalOnboardView extends StatelessWidget {
  const MedicalOnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MedicalNavigationView()));
                    }, child: const Text(
                      "SKIP",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6d69d4)),
                    ),)
                  ],
                ),
              ),
              Image.asset(
                'assets/images2/doctors.png',
                width: 400,
                height: 400,
              ),
              const Text(
                "Doctors Appointment",
                style: TextStyle(
                    fontSize: 45,
                    color: Color(0xff6d69d4),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0,15,0,30),
                 child: Text(
                  "Appoint your Doctor",
                  style: TextStyle(
                      fontSize: 20,
                      color:Colors.black.withOpacity(0.6),
                  ),
              ),
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   CustomButton(
                    text: "Login",
                    width: 170,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MedicalLoginView()));
                    }, bgColor: const Color(0xff6d69d4), textSize: 25, textColor: Colors.white,
              ),
                   CustomButton(
                    text: "Register",
                    width: 170,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MedicalRegisterView()));
                    }, bgColor: const Color(0xff6d69d4), textSize: 25, textColor: Colors.white,
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
