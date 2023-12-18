import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final bool isMale ;
  final double height ;
  final int weight ;
  final int age ;
  final int result ;

  const Result({super.key, required this.isMale, required this.height, required this.weight, required this.age, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff090e21),
      appBar:  AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new),color: Colors.white,iconSize: 30,),
        backgroundColor: const Color(0xff090e21),
        title: const Text(
          'Result',
          style: TextStyle(
              fontSize: 35,
              color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isMale?const Text('Male',style: TextStyle(color: Colors.white,fontSize: 40),) :
            const Text('Female',style: TextStyle(color: Colors.white,fontSize: 40),),
            Text('height: ${height.round()} cm',style: const TextStyle(color: Colors.white,fontSize: 40),),
            Text('weight: $weight',style: const TextStyle(color: Colors.white,fontSize: 40),),
            Text('age: $age',style: const TextStyle(color: Colors.white,fontSize: 40),),
            Text('BMI: $result',style: const TextStyle(color: Colors.white,fontSize: 40),),

          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
    );
  }
}
