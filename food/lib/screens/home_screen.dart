// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

   static List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
    Text('Index 3: Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 42,
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Deliver now",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Madni Town",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 37,
                          width: 80,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(60, 204, 203, 203),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 40,
                                child: Container(
                                  width: 37,
                                  height: 37,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.business_center,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: const Alignment(1, 0),
                                  child: SizedBox(
                                    width: 37,
                                    height: 37,
                                    child: Center(
                                      child: Image.asset(
                                        'images/image 2.png',
                                        width: 20,
                                        height: 20,
                                        fit: BoxFit.contain,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      labelText: "Search Super Foodoo",
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.sort)),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SelectionCard(
                        name: "Burger",
                        image: Image.asset("images/burger 1.png"),
                      ),
                      SelectionCard(
                        name: "Piza",
                        image: Image.asset("images/pizza 1.png"),
                      ),
                      SelectionCard(
                        name: "Meat",
                        image: Image.asset("images/meat_ 1.png"),
                      ),
                      SelectionCard(
                        name: "Icecream",
                        image: Image.asset(
                          "images/ice cream 1.png",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const slide(
                  text: "Featured on Super Foodoo",
                ),
                const SizedBox(
                  height: 15,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      foodcard(
                        deltime: "\$4.99 Delivery Fee . 15-30 min",
                        foodname: "McDonald’s(Best Offer)",
                        yellotext: "Free Item(Spend \$10)",
                      ),
                      foodcard(
                        deltime: "\$4.99 Delivery Fee . 15-30 min",
                        foodname: "McDonald’s(Best Offer)",
                        yellotext: "Free Item(Spend \$10)",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const slide(text: "Hot spots"),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    addfood(
                      name: "Mc Double",
                      price: "\$20.99",
                      img: Image.asset("images/yyy@1 1.png"),
                    ),
                    addfood(
                      name: "Mc Double",
                      price: "\$20.99",
                      img: Image.asset("images/yyy@1 1.png"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class addfood extends StatelessWidget {
  final Image? img;
  final String name;
  final String price;
  const addfood(
      {super.key, required this.img, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 149,
              width: 139,
              child: Card(
                child: Stack(
                  children: [
                    Align(
                      alignment: const Alignment(0, 1),
                      child: FractionalTranslation(
                          translation: const Offset(0.0, -1.0), child: img),
                    ),
                    Positioned(
                      bottom: 34,
                      left: 5,
                      right: 8.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          Text(
                            price,
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class slide extends StatelessWidget {
  final String text;
  const slide({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 233, 233, 232),
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_rounded),
          ),
        ),
      ],
    );
  }
}

class foodcard extends StatelessWidget {
  final Image? image;
  final String yellotext;
  final String foodname;
  final String deltime;
  const foodcard(
      {super.key,
      required this.deltime,
      required this.foodname,
      this.image,
      required this.yellotext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 230,
            child: Card(
              child: Stack(
                children: [
                  const Image(
                    image: AssetImage(
                      "images/view-3d-burger-meal-with-french-fries 1.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 8),
                    child: Align(
                      alignment: const Alignment(-1.2, 0),
                      child: Container(
                        height: 20,
                        width: 160,
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                          ),
                        ),
                        child: Text(
                          yellotext,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(foodname),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(deltime),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(60, 204, 203, 203),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "4.5",
                        style: TextStyle(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SelectionCard extends StatelessWidget {
  final String name;
  final Image? image;

  const SelectionCard({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Card(
                child: SizedBox(
                  height: 80,
                  width: 80,
                  child: image,
                ),
              ),
              Text(
                name,
                style: const TextStyle(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
