import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    String? result = "RESULT";
    return Scaffold(
      backgroundColor: const Color(0xff9e9e9e),
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          "Calculator",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: const Color(0xff607d8b),
            child: Center(
              child: Text(
                result,
                style: const TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "4",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "6",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "-",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "7",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "8",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "9",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "*",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "#",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "/",
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "=",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
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
