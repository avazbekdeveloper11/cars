import 'package:cars/model/data.dart';
import 'package:cars/model/show_config/size_config.dart';
import 'package:flutter/material.dart';

class ShowList extends StatefulWidget {
  const ShowList({Key? key}) : super(key: key);

  @override
  State<ShowList> createState() => _ShowListState();
}

class _ShowListState extends State<ShowList> {
  final List _cars = List.generate(6, (index) => Cars(saved: false));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Mypadding(
            top: 45,
            left: 21.3,
            right: 21.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Icon(Icons.arrow_back_ios, size: Height(22)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  "Filter",
                  style: Write(22.0, FontWeight.w700),
                ),
                InkWell(
                  child: Icon(Icons.search, size: Height(22)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Mypadding(
            child: SizedBox(
              height: Height(740),
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.85),
                padding: const EdgeInsets.all(0),
                itemBuilder: (_, __) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/showCar');
                    },
                    child: Container(
                      height: Height(202.0),
                      width: Width(160.0),
                      child: Mypadding(
                        top: 13.0,
                        left: 17.0,
                        bottom: 13,
                        right: 18,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            carsCard(),
                            carModel(__),
                            carImage(__),
                            carPrice(__)
                          ],
                        ),
                      ),
                      margin: EdgeInsets.only(
                        left: Height(10),
                        right: Height(10),
                        top: Height(22),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: radius(8),
                        border: Border.all(color: const Color(0xFFD9D9D9)),
                      ),
                    ),
                  );
                },
                itemCount: 6,
              ),
            ),
          )
        ],
      ),
    );
  }

  Row carPrice(__) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("\$70/ day"),
        InkWell(
          onTap: () {
            setState(() {
              _cars[__].saved = !_cars[__].saved;
            });
          },
          child: Container(
            height: Height(25),
            width: Width(25),
            child: Center(
              child: svgImage(
                  _cars[__].saved
                      ? "assets/icons/savedOn.svg"
                      : "assets/icons/savedOff.svg",
                  12.0),
            ),
            decoration: BoxDecoration(
              borderRadius: radius(5),
              border: Border.all(
                color: const Color(0xFFD9D9D9),
              ),
            ),
          ),
        )
      ],
    );
  }

  SizedBox carImage(int __) {
    return SizedBox(
      height: Height(94.0),
      width: Width(146.0),
      child: Image(
        image: AssetImage(__.isEven ? cars[0] : cars[1]),
      ),
    );
  }

  Text carModel(int __) {
    return Text(__.isEven ? "E-class 221" : "E-class 222",
        style: Write(18.0, FontWeight.w700));
  }

  Container carsCard() {
    return Container(
      height: Height(18.0),
      width: Width(71.0),
      child: Center(
        child: Text(
          "Mercedes-Benz",
          style: Write(10, FontWeight.w400),
        ),
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFDCA00),
        borderRadius: radius(3),
      ),
    );
  }
}
