import 'package:cars/model/data.dart';
import 'package:cars/model/show_config/size_config.dart';
import 'package:flutter/material.dart';

class ShowCar extends StatefulWidget {
  const ShowCar({Key? key}) : super(key: key);

  @override
  State<ShowCar> createState() => _ShowCarState();
}

class _ShowCarState extends State<ShowCar> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  PageController _pageController = PageController(initialPage: 0);
  int index = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Mypadding(
            top: 20.0,
            left: 20.0,
            right: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.bookmark_border,
                    size: Height(35),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Height(179.0),
            width: double.infinity,
            child: PageView(
              controller: _pageController,
              children: [
                SizedBox(
                  height: Height(179.0),
                  width: Width(280.0),
                  child: Image.asset('assets/cars/merceders222.png'),
                ),
                SizedBox(
                  height: Height(179.0),
                  width: Width(280.0),
                  child: Image.asset('assets/cars/merceders221.png',
                      fit: BoxFit.cover),
                ),
                SizedBox(
                  height: Height(179.0),
                  width: Width(280.0),
                  child: Image.asset('assets/cars/merceders222.png'),
                ),
              ],
              onPageChanged: (v) {
                setState(() {
                  _tabController!.index = v;
                });
              },
            ),
          ),
          TabPageSelector(
            selectedColor: const Color(0xFF272727),
            color: const Color(0xFFFFCC00),
            controller: _tabController,
          ),
        ],
      ),
    );
  }
}
