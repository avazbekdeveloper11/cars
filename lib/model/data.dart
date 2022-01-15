import 'package:cars/model/show_config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cars {
  bool saved;
  Cars({required this.saved});
}

class Elevated {
  Color color;
  Color colorClass;
  Color colorBrend;
  Elevated({
    required this.color,
    required this.colorBrend,
    required this.colorClass,
  });
}

List cars = ["assets/cars/merceders221.png", "assets/cars/merceders222.png"];
List KM = [">200", "250-350", "400-500", "<500"];
List carType = ["S.U.V", "Sedan", "Pick-Up", "Sport"];
List text = ["Economy", "Bussines", "Premium"];
int index = 0;

List tarif = [
  "assets/icons/economy.svg",
  "assets/icons/bussines.svg",
  "assets/icons/premium.svg"
];

List brends = [
  "assets/brends/mercedes.png",
  "assets/brends/bmw.png",
  "assets/brends/toyota.png",
  "assets/brends/chevrolet.png"
];
BorderSide borderSide(color, {width = 1.0}) {
  return BorderSide(color: color, width: width);
}

BorderRadius radius(double r) {
  return BorderRadius.all(
    Radius.circular(r.toDouble()),
  );
}

Padding Mypadding(
    {top = 0.0, bottom = 0.0, left = 0.0, right = 0.0, required child}) {
  return Padding(
    padding: EdgeInsets.only(
      top: Height(top.toDouble()),
      bottom: Height(bottom.toDouble()),
      right: Width(right.toDouble()),
      left: Width(left.toDouble()),
    ),
    child: child,
  );
}

TextStyle Write(
    [height = 14.0, fontWeight = FontWeight.normal, color = Colors.black]) {
  return TextStyle(
      fontSize: Height(height.toDouble()),
      fontWeight: fontWeight,
      color: color);
}

SvgPicture svgImage(String image, double heigth) {
  return SvgPicture.asset(
    image,
    height: heigth.toDouble(),
  );
}

Container rasmJoyla({required rasm, required model}) {
  return Container(
    height: Height(105.0),
    width: Width(158.0),
    decoration: BoxDecoration(
      borderRadius: radius(8),
      border: Border.all(color: const Color(0xFFB4B4B4)),
    ),
    child: Column(
      children: [
        Mypadding(
          left: 14.0,
          right: 14.0,
          top: 8.0,
          bottom: 5.0,
          child: SizedBox(
            height: Height(66.0),
            width: Width(123.0),
            child: Image(
              image: AssetImage(rasm),
            ),
          ),
        ),
        SizedBox(
          height: Height(14.0),
          width: Width(93.0),
          child: Text(
            model,
            style: const TextStyle(fontSize: 11.0, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    ),
  );
}
