import 'package:assignments/Medical%20app/doctor_details.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;

  final String hint;

  final IconData leftIcon;
  final IconData? rightIcon;
  final void Function()? obscure;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.leftIcon,
    this.rightIcon,
    this.obscure,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 18, 8, 18),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: Icon(leftIcon),
          suffixIcon: IconButton(onPressed: obscure, icon: Icon(rightIcon)),
          hintText: hint,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;

  final Color bgColor;

  final Color textColor;

  final double width;
  final double textSize;
  final void Function() onTap;

  const CustomButton({
    super.key,
    required this.text,
    required this.width,
    required this.onTap,
    required this.bgColor,
    required this.textSize,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: width,
          height: 60,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: textSize,
            ),
          )),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Color bgColor;
  final Color circleBgColor;
  final IconData circleIcon;
  final Color circleIconColor;
  final String title;
  final String subTitle;
  final Color txtColor;

  const CustomCard({
    super.key,
    required this.bgColor,
    required this.circleBgColor,
    required this.circleIcon,
    required this.title,
    required this.subTitle,
    required this.circleIconColor,
    required this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // p all 20 , m h 5 h 180
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 180,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(2, 0),
              blurRadius: 10,
              spreadRadius: 5,
            )
          ],
          color: bgColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: circleBgColor,
              child: Icon(
                circleIcon,
                color: circleIconColor,
                size: 30,
              ),
            ),
            const Spacer(),
            Text(
              title,
              style: TextStyle(color: txtColor, fontSize: 23),
            ),
            Text(
              subTitle,
              style: TextStyle(color: txtColor.withOpacity(0.5), fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorItem extends StatelessWidget {
  final String image;
  final String name;

  const DoctorItem({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const DoctorDetails()));
        },
        child: CustomContainer(
            lMargin: 8, tMargin: 8, rMargin: 8, bMargin: 8,
            lPadding: 40, tPadding: 40, rPadding: 40, bPadding: 40,
            width: double.infinity, height: 280,
            color: Colors.white,
            child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(image),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Masalek bawlya",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 35,
                  ),
                  Text(
                    "4.3",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget categoryItem({required String text}) {
  return CustomContainer(
      lMargin: 10, tMargin: 10, rMargin: 10, bMargin: 10,
      lPadding: 0, tPadding: 0, rPadding: 0, bPadding: 0,
      width: 120, height: 50,
      color: Colors.white,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        )),
  );
}

Text themText(
    {required bool isBold,
    required String text,
    required double size,
    required Color color}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      fontSize: size,
      color: color,
    ),
  );
}


class CustomContainer extends StatelessWidget {
  final Widget child;
  final double? lMargin;
  final double tMargin;
  final double rMargin;
  final double bMargin;
  final double lPadding;
  final double tPadding;
  final double rPadding;
  final double bPadding;
  final double width;
  final double height;
  final Color color;

  const CustomContainer({
    super.key,
    required this.child,
     this.lMargin,
    required this.tMargin,
    required this.rMargin,
    required this.bMargin,
    required this.lPadding,
    required this.tPadding,
    required this.rPadding,
    required this.bPadding,
    required this.width,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(lPadding, tPadding, rPadding, bPadding),
      margin: EdgeInsets.fromLTRB(lMargin!, tMargin, rMargin, bMargin),
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
