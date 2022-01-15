import 'package:cars/model/data.dart';
import 'package:cars/model/show_config/size_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Mypadding(
              top: 51.0,
              left: 21.0,
              right: 213.0,
              child: Text(
                "Select your car",
                style: TextStyle(
                  fontSize: Height(20.0),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              children: [
                Mypadding(
                  top: 15.0,
                  left: 20.0,
                  child: SizedBox(
                    height: Height(45.0),
                    width: Width(271.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,
                            size: Height(20.0), color: const Color(0xFFD9D9D9)),
                        hintStyle: TextStyle(
                            fontSize: Height(12.0),
                            color: const Color(0xFFD9D9D9)),
                        hintText: "Search",
                        border: OutlineInputBorder(
                            borderSide: borderSide(const Color(0xFFD9D9D9)),
                            borderRadius: radius(8)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: radius(8.0),
                          borderSide: borderSide(const Color(0xFFD9D9D9)),
                        ),
                      ),
                    ),
                  ),
                ),
                Mypadding(
                  top: 15.0,
                  left: 19.0,
                  right: 20.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/filter");
                    },
                    child: Container(
                      height: Height(45.0),
                      width: Width(45.0),
                      child: Mypadding(
                          top: 12.0,
                          bottom: 12.0,
                          right: 12.0,
                          left: 12.0,
                          child: svgImage("assets/icons/filter.svg", 117)),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: radius(8),
                        border: Border.all(
                            color: const Color(0xFFD9D9D9), width: 1.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Mypadding(
              top: 10.0,
              bottom: 8.0,
              left: 19.0,
              right: 264.0,
              child: Text(
                "Car brends",
                style: TextStyle(
                  fontSize: Height(20.0),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Mypadding(
              left: 21.0,
              right: 21.0,
              child: SizedBox(
                height: Height(64.0),
                width: double.infinity,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, __) {
                    return Mypadding(
                      right: 20.0,
                      child: Container(
                        height: Height(64.0),
                        width: Width(68.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(brends[__]), fit: BoxFit.fill),
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          // border: Border.all(
                          //     color: const Color(0xFFD9D9D9), width: 1.0),
                        ),
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Mypadding(
                      top: 26.0,
                      left: 20.0,
                      child: Text(
                        "Hot offers",
                        style: TextStyle(
                          fontSize: Height(20.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Mypadding(
                      top: 31.0,
                      right: 20.0,
                      child: InkWell(
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: Height(14.0),
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFBABABA),
                          ),
                        ),
                        onTap: () {},
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Mypadding(
                      top: 10.0,
                      left: 20.0,
                      child: rasmJoyla(
                          rasm: "assets/cars/LandCruiser.png",
                          model: "Land Cruiser 200"),
                    ),
                    Mypadding(
                      top: 10.0,
                      left: 20.0,
                      child: rasmJoyla(
                          rasm: "assets/cars/mercedes.png",
                          model: "Mercedes-Benz 220"),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Mypadding(
                      top: 25.0,
                      left: 20.0,
                      child: Text(
                        "Convenient offers",
                        style: TextStyle(
                          fontSize: Height(20.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Mypadding(
                      top: 31.0,
                      right: 20.0,
                      child: InkWell(
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: Height(14.0),
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFBABABA),
                          ),
                        ),
                        onTap: () {},
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Mypadding(
                      top: 10.0,
                      left: 20.0,
                      child: rasmJoyla(
                          rasm: "assets/cars/bmw.png",
                          model: "BMW M5 Sport edition"),
                    ),
                    Mypadding(
                      top: 10.0,
                      left: 20.0,
                      child: rasmJoyla(
                          rasm: "assets/cars/toyota.png", model: "Toyota Prado"),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Mypadding(
                      top: 25.0,
                      left: 20.0,
                      child: Text(
                        "Last added",
                        style: TextStyle(
                          fontSize: Height(20.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Mypadding(
                      top: 31.0,
                      right: 20.0,
                      child: InkWell(
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: Height(14.0),
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFBABABA),
                          ),
                        ),
                        onTap: () {},
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Mypadding(
                      top: 10.0,
                      left: 20.0,
                      child: rasmJoyla(
                          rasm: "assets/cars/corvette.png",
                          model: "Chevrolet Corvette"),
                    ),
                    Mypadding(
                      top: 10.0,
                      left: 20.0,
                      child: rasmJoyla(
                          rasm: "assets/cars/camoro.png",
                          model: "Chevrolet Camaro"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: svgImage(
                _currentIndex == 0
                    ? "assets/icons/homeOff.svg"
                    : "assets/icons/homeOn.svg",
                Height(22)),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: svgImage(
                _currentIndex == 0
                    ? "assets/icons/tripsOff.svg"
                    : "assets/icons/tripsOn.svg",
                Height(22)),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: svgImage(
                _currentIndex == 0
                    ? "assets/icons/savedOff.svg"
                    : "assets/icons/savedOn.svg",
                Height(22)),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: svgImage(
                _currentIndex == 0
                    ? "assets/icons/profileOff.svg"
                    : "assets/icons/profileOn.svg",
                Height(22)),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
