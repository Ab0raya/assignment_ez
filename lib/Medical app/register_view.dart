import 'package:assignments/Medical%20app/login_view.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class MedicalRegisterView extends StatefulWidget {
  const MedicalRegisterView({super.key});

  @override
  State<MedicalRegisterView> createState() => _MedicalRegisterViewState();
}

class _MedicalRegisterViewState extends State<MedicalRegisterView> {
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
                hint: 'Full name',
                leftIcon: Icons.person,
                obscureText: false,
              ),
              const CustomTextField(
                hint: 'Email',
                leftIcon: Icons.email,
                obscureText: false,
              ),
              const CustomTextField(
                hint: 'Phone number',
                leftIcon: Icons.phone,
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
                text: "Register",
                width: double.infinity,
                onTap: () {}, bgColor: const Color(0xff6d69d4), textSize: 25, textColor: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MedicalLoginView()));
                    },
                    child: const Text(
                      'Login',
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
