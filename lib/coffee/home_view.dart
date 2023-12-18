import 'package:assignments/coffee/coffee_item_view.dart';
import 'package:flutter/material.dart';

class CoffeeHomeView extends StatefulWidget {
  const CoffeeHomeView({super.key});

  @override
  State<CoffeeHomeView> createState() => _CoffeeHomeViewState();
}

class _CoffeeHomeViewState extends State<CoffeeHomeView> {
  Color c = const Color(0xff202224);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    List<Widget> categories = [
      categoryItem("Hot Coffee", 0),
      categoryItem("Cold Coffee", 1),
      categoryItem("Sweetened or Flavored Coffee", 2),
      categoryItem("Espresso", 3),
      categoryItem("Cappuccino", 4),
    ];
    return Scaffold(
      backgroundColor: c,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(h * 0.01, h * 0.0075, h * 0.01, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white.withOpacity(0.4),
                      size: h * 0.04,
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white.withOpacity(0.4),
                      size: h * 0.04,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        " It's a great day for coffee :)",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: h * 0.1 / 3.5,
                            fontFamily: 'Pacifico'),
                      ),
                    ],
                  ),
                ),
                searchBar(h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: categories,
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    coffeeItem(image: 'assets/images/Latte.png', title: 'Latte', des: 'Best Coffee', price: '50'),
                    coffeeItem(image: 'assets/images/Espresso.png', title: 'Espresso', des: 'Best Coffee', price: '12'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    coffeeItem(image: 'assets/images/BlackCoffee.png', title: 'Black Coffee', des: 'Best Coffee', price: '22'),
                    coffeeItem(image: 'assets/images/ColdCoffee.png', title: 'Cold Coffee', des: 'Best Coffee', price: '37'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: h * 0.01),
        color: const Color(0xff1a1b1d),
        width: double.infinity,
        height: h * 0.070,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home_filled,
              size: 50,
              color: Colors.orange,
            ),
            Icon(
              Icons.favorite,
              size: 50,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications,
              size: 50,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 50,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget coffeeItem({
    required String image,
    required String title,
    required String des,
    required String price,
  }) {
    double h = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CoffeeItemView(image: image, title: title, price: price)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: h * 0.01),
        padding: EdgeInsets.all(h * 0.01),
        width: h * 0.205,
        height: h * 0.310,
        decoration: BoxDecoration(
          color: const Color(0xff1a1b1d),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 19,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: h * 0.180,
              height: h * 0.180,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: h * 0.023,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      des,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: h * 0.019,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$$price',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: h * 0.023,
                          fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: h * 0.02,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryItem(String categoryName, int index) {
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: h * 0.001),
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Text(
              categoryName,
              style: TextStyle(
                color: currentIndex == index
                    ? Colors.orange
                    : Colors.white.withOpacity(0.8),
                fontSize: h * 0.020,
              ),
            ),
          ),
          Visibility(
            visible: currentIndex == index ? true : false,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(h * 0.01)),
              height: 5,
              width: categoryName.length.toDouble() * 11,
            ),
          ),
        ],
      ),
    );
  }

  Container searchBar(double h) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: h * 0.01),
      margin: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: h * 0.01),
      width: double.infinity,
      height: h * 0.065,
      decoration: BoxDecoration(
        color: const Color(0xff313537),
        borderRadius: BorderRadius.circular(h * 0.016),
      ),
      child: TextField(
        cursorColor: Colors.orange,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          icon: Icon(
            Icons.search,
            size: 45,
            color: Colors.white.withOpacity(0.4),
          ),
          labelText: "Find your coffee",
          labelStyle: TextStyle(
              color: Colors.white.withOpacity(0.4), fontSize: h * 0.1 / 5),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
