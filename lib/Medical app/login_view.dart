import 'package:assignments/Medical%20app/register_view.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class MedicalLoginView extends StatefulWidget {
  const MedicalLoginView({super.key});

  @override
  State<MedicalLoginView> createState() => _MedicalLoginViewState();
}

class _MedicalLoginViewState extends State<MedicalLoginView> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images2/doctors.png',
              ),
              const CustomTextField(
                hint: 'Enter Username',
                leftIcon: Icons.person,
                obscureText: false,
              ),
              CustomTextField(
                hint: 'Enter Password',
                leftIcon: Icons.lock,
                rightIcon: Icons.remove_red_eye_rounded,
                obscure: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                obscureText: isVisible,
              ),
              CustomButton(
                text: "Login",
                width: double.infinity,
                onTap: () {}, bgColor: const Color(0xff6d69d4), textSize: 25, textColor: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account? ',
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MedicalRegisterView()));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 18, color: Color(0xff6d69d4)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
