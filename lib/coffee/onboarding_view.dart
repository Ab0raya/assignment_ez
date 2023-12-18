import 'package:assignments/coffee/home_view.dart';
import 'package:assignments/coffee/coffee_item_view.dart';
import 'package:flutter/material.dart';

class CoffeeOnboardView extends StatelessWidget {
  const CoffeeOnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/images/bg.png'))),
        child: Column(
          children: [
            SizedBox(
              height: h * 0.1407,
            ),
             Text(
              "Coffee Shop",
              style: TextStyle(
                  color: Colors.white, fontSize: h * 0.1/2, fontFamily: 'Pacifico'),
            ),
            SizedBox(
              height: h * 0.516,
            ),
             Text(
              "Felling mabdwon ? take some coffee bitch",
              style: TextStyle(
                color: Colors.white,
                fontSize: h * 0.1/5,
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CoffeeHomeView()));
              },
              child: Container(
                margin: EdgeInsets.only(top: h*0.1),
                width: 210,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: h * 0.1/4,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
