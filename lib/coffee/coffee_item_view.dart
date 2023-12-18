import 'package:flutter/material.dart';
class CoffeeItemView extends StatefulWidget {
  const CoffeeItemView({super.key, required this.image, required this.title, required this.price});
  final String? image;
  final String? title;
  final String? price;

  @override
  State<CoffeeItemView> createState() => _CoffeeItemViewState();
}

class _CoffeeItemViewState extends State<CoffeeItemView> {
  final Color c = const Color(0xff202224);
  int itemCount = 1 ;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: c,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: c,
        leading: IconButton(
          onPressed: () {Navigator.of(context).pop();},
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white.withOpacity(0.4),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.asset(
                  widget.image!,
                  width: h * 0.30,
                  height: h * 0.30,
                )),
            const SizedBox(
              height: 70,
            ),
            Text(
              "B E S T   C O F F E E",
              style: TextStyle(
                color: Colors.white.withOpacity(0.3),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
             Text(
              widget.title!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.white.withOpacity(0.4), width: 2),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(32),
                          bottomLeft: Radius.circular(32))),
                  width: 180,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                              setState(() {
                                itemCount++;
                              });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          )),
                       Text(
                        "$itemCount",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              itemCount--;
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            size: 30,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                 Text(
                  "\$${widget.price}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Coffee: a warm embrace in a cup, awakening senses with its rich aroma and energizing elixir",
              style: TextStyle(
                color: Colors.white.withOpacity(0.3),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Volume: 60ml",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  width: 260,
                  height: 80,
                  decoration: BoxDecoration(
                      color: const Color(0xff292a2c),
                      borderRadius: BorderRadius.circular(16)),
                  child: const Center(
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                const Spacer(),
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                      color: const Color(0xffc46629),
                      borderRadius: BorderRadius.circular(16)),
                  child: const Center(
                    child: Icon(
                      Icons.favorite_border,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
