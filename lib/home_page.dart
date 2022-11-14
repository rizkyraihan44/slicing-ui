import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> allMenu = [
    "All",
    "Living Room",
    "Bedroom",
    "Dining Room",
    "Kitchen"
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 28,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home_outlined,
              ),
              label: '',
              activeIcon: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff4a4543),
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black54,
              ),
              label: '',
              activeIcon: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff4a4543),
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(5),
                  child: Icon(Icons.home, color: Colors.white)),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
                color: Colors.black54,
              ),
              label: '',
              activeIcon: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff4a4543),
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(5),
                  child: Icon(Icons.home, color: Colors.white)),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black54,
              ),
              label: '',
              activeIcon: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff4a4543),
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(5),
                  child: Icon(Icons.home, color: Colors.white)),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 51, bottom: 32, left: 14, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/icons/Icon_menu.png",
                    width: 22.0,
                    height: 18.0,
                    fit: BoxFit.fill,
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4a4543)),
                  ),
                  Image.asset(
                    "assets/icons/Icon_search.png",
                    width: 18.0,
                    height: 18.0,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 205, 0),
              child: const Text(
                "Discover the most\nmodern furniture",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 36.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allMenu.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: index == 0 ? 24 : 15,
                          right: index == allMenu.length - 1 ? 24 : 0),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 33,
                      decoration: BoxDecoration(
                        color: current == index
                            ? const Color(0xff9a9390)
                            : const Color(0xfff2f2f2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Text(
                            allMenu[index],
                            style: TextStyle(
                                color: current == index
                                    ? const Color(0xfff2f2f2)
                                    : const Color(0xff4a4543),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 180, 0),
              child: const Text(
                "Recommended Furnitures",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    color: Color(0xffffffff),
                    child: SizedBox(
                      width: 183,
                      height: 280,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/img1.png",
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 12,
                            ), //SizedBox
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(14, 0, 90, 5),
                                    child: Text(
                                      'Stylish Chair',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff4a4543),
                                        fontWeight: FontWeight.w500,
                                      ), //Textstyle
                                    ),
                                  ),
                                ]), //Text
                            const SizedBox(
                              height: 5,
                            ), //SizedBox
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '\$170',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff9a9390),
                                    ), //Textstyle
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star_outlined,
                                        color: Color(0xffeea427),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        "4.9",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ), //Text
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                  const SizedBox(
                    width: 1.0,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    color: Color(0xffffffff),
                    child: SizedBox(
                      width: 183,
                      height: 280,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/img2.png",
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 12,
                            ), //SizedBox
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(14, 0, 90, 5),
                                    child: Text(
                                      'Stylish Chair',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff4a4543),
                                        fontWeight: FontWeight.w500,
                                      ), //Textstyle
                                    ),
                                  ),
                                ]), //Text
                            const SizedBox(
                              height: 5,
                            ), //SizedBox
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '\$170',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff9a9390),
                                    ), //Textstyle
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star_outlined,
                                        color: Color(0xffeea427),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        "4.9",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ), //Text
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
