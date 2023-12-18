import 'package:assignments/other/result.dart';
import 'package:flutter/material.dart';

class AburayaBmi extends StatefulWidget {
  const AburayaBmi({super.key});

  @override
  State<AburayaBmi> createState() => _AburayaBmiState();
}

class _AburayaBmiState extends State<AburayaBmi> {
  bool isMale = true;
  double height = 180;
  int weight = 60;
  int age = 19;
  Color pColor = const Color(0xff9163CB);
  Color bgColor = const Color(0xff090e21);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff090e21),
        title: const Text(
          'Aburaya',
          style: TextStyle(fontSize: 45, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          themeColorPicker(
            color: const Color(0xffEB1445),
          ),
          themeColorPicker(
            color: const Color(0xff9163CB),
          ),
          themeColorPicker(
            color: const Color(0xffEEBA0B),
          ),
          themeColorPicker(
            color: const Color(0xff386641),
          ),
          themeColorPicker(
            color: const Color(0xff0077b6),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: isMale ? pColor : const Color(0xff111328)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 100,
                                color: Colors.white,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: isMale ? const Color(0xff111328) : pColor,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 100,
                                color: Colors.white,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.only(top: 40),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff111328)),
                child: Column(
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 25, color: Colors.white.withOpacity(0.5)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 65,
                              color: Colors.white),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.6)),
                        ),
                      ],
                    ),
                    Slider(
                      inactiveColor: Colors.white.withOpacity(0.2),
                      activeColor: pColor,
                      min: 30,
                      max: 200,
                      value: height,
                      onChanged: (val) {
                        setState(() {
                          height = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xff111328)),
                        child: Column(
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white.withOpacity(0.5)),
                            ),
                            Text(
                              '$weight',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 65,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: const Color(0xff4b4f5e),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  backgroundColor: const Color(0xff4b4f5e),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xff111328)),
                        child: Column(
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white.withOpacity(0.5)),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 65,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: const Color(0xff4b4f5e),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  backgroundColor: const Color(0xff4b4f5e),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: pColor,
                          borderRadius: BorderRadius.circular(16)),
                      child: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  backgroundColor: const Color(0xff111328),
                                  title: Text(
                                    "BMI result",
                                    style:
                                        TextStyle(color: pColor, fontSize: 25),
                                  ),
                                  content: Text(
                                    "${(weight / ((height / 100) * (height / 100))).round()}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                );
                              },
                            );
                          },
                          child: const Text(
                            'Calculate',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 80,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: pColor,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Result(
                                      isMale: isMale,
                                      height: height,
                                      weight: weight,
                                      age: age,
                                      result: (weight /
                                              ((height / 100) * (height / 100)))
                                          .round())));
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget themeColorPicker({
    required Color color,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          pColor = color;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: color,
        ),
      ),
    );
  }
}
