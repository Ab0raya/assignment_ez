import 'package:assignments/Login_and_register_screens/register_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  double smallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double bigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffededed),
      body: Stack(
        children: [
          Positioned(
            right: -smallDiameter(context) / 3,
            top: -smallDiameter(context) / 3,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffb226b2),
                    Color(0xffff6da7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              width: smallDiameter(context),
              height: smallDiameter(context),
            ),
          ),
          Positioned(
            left: -bigDiameter(context) / 4,
            top: -bigDiameter(context) / 4,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffb226b2),
                    Color(0xffff4891),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              width: bigDiameter(context),
              height: bigDiameter(context),
              child: const Center(
                child: Text(
                  "Aburaya",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                const CustomField(
                    label: 'Email', icon: Icons.email, topPadding: 350),
                const CustomField(
                    label: 'Password',
                    icon: Icons.vpn_key_outlined,
                    topPadding: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: customText(
                              'Forgot password !', const Color(0xffee618c))),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 25, 25, 10),
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffb226b2),
                        Color(0xffff4891),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText("Don't have an account !", Colors.grey),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const RegisterView()));
                        },
                        child: customText(
                          " Register",
                          const Color(0xffee618c),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.label,
    required this.icon,
    required this.topPadding,
  });

  final String label;

  final IconData icon;

  final double topPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      margin: EdgeInsets.fromLTRB(20, topPadding, 20, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: const Color(0xffee618c),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade100),
            ),
            enabledBorder: InputBorder.none,
            labelText: label),
      ),
    );
  }
}
Text customText(String txt, Color color) {
  return Text(
    txt,
    style: TextStyle(color: color, fontSize: 17, fontWeight: FontWeight.bold),
  );
}