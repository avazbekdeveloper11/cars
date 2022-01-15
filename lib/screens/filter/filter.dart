import 'package:cars/model/data.dart';
import 'package:cars/model/show_config/size_config.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final List _elevated = List.generate(
      KM.length,
      (index) => Elevated(
            color: const Color(0xFFD9D9D9),
            colorBrend: const Color(0xFFD9D9D9),
            colorClass: const Color(0xFFD9D9D9),
          ));
  var _sliderCount = const RangeValues(0, 1);
  DateTime? _dateTime;
  DateTime? _dateTime1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Mypadding(
            top: 45,
            left: 21.3,
            right: 163.0,
            child: Row(
              children: [
                InkWell(
                  child: Icon(Icons.arrow_back_ios, size: Height(22)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Spacer(),
                Text(
                  "Filter",
                  style: Write(22.0, FontWeight.w700),
                ),
              ],
            ),
          ),
          Mypadding(
            left: 19.0,
            top: 23.0,
            bottom: 8,
            child: Text(
              "Data",
              style: Write(22.0, FontWeight.w400),
            ),
          ),
          Mypadding(
            right: 20.0,
            left: 21.0,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "From",
                      style: Write(14.0, FontWeight.w400),
                    ),
                    Mypadding(
                      top: 3,
                      child: InkWell(
                        child: Container(
                          height: Height(45.0),
                          width: Width(157.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Mypadding(
                                left: 13.0,
                                right: 7.0,
                                child: svgImage(
                                  "assets/icons/calendar.svg",
                                  18.0,
                                ),
                              ),
                              Text(
                                _dateTime == null
                                    ? "Choose"
                                    : "${_dateTime!.month}-${_dateTime!.day}-${_dateTime!.year}",
                                style: Write(
                                  14.0,
                                  FontWeight.w400,
                                  _dateTime == null
                                      ? const Color(0xFFD9D9D9)
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: radius(8),
                            border: Border.all(
                              color: const Color(0xFFD9D9D9),
                            ),
                          ),
                        ),
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2003),
                                  lastDate: DateTime(2030))
                              .then((date) {
                            setState(() {
                              _dateTime = date;
                            });
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "To",
                      style: Write(14.0, FontWeight.w400),
                    ),
                    Mypadding(
                      top: 3,
                      child: InkWell(
                        child: Container(
                          height: Height(45.0),
                          width: Width(157.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Mypadding(
                                left: 13.0,
                                right: 7.0,
                                child: svgImage(
                                  "assets/icons/calendar2.svg",
                                  18.0,
                                ),
                              ),
                              Text(
                                _dateTime1 == null
                                    ? "Choose"
                                    : "${_dateTime1!.month}-${_dateTime1!.day}-${_dateTime1!.year}",
                                style: Write(
                                  14.0,
                                  FontWeight.w400,
                                  _dateTime == null
                                      ? const Color(0xFFD9D9D9)
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: radius(8),
                            border: Border.all(
                              color: const Color(0xFFD9D9D9),
                            ),
                          ),
                        ),
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2030))
                              .then((date) {
                            setState(() {
                              _dateTime1 = date;
                            });
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Mypadding(
              top: 18.0,
              bottom: 10.0,
              left: 19.0,
              right: 264.0,
              child: Text("Model", style: Write(18.0, FontWeight.w400))),
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
                    child: InkWell(
                      child: Container(
                        height: Height(64.0),
                        width: Width(68.0),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(brends[__]),
                                fit: BoxFit.fill),
                            color: Colors.white,
                            borderRadius: radius(8),
                            border:
                                Border.all(color: _elevated[__].colorBrend)),
                      ),
                      onTap: () {
                        setState(() {
                          _elevated[__].colorBrend == const Color(0xFFFFCC00)
                              ? _elevated[__].colorBrend =
                                  const Color(0xFFD9D9D9)
                              : _elevated[__].colorBrend =
                                  const Color(0xFFFFCC00);
                        });
                      },
                    ),
                  );
                },
                itemCount: 4,
              ),
            ),
          ),
          Mypadding(
            top: 18.0,
            bottom: 10.0,
            left: 19.0,
            right: 264.0,
            child: Text(
              "Class",
              style: Write(18.0, FontWeight.w400),
            ),
          ),
          Mypadding(
            top: 11.0,
            right: 20.0,
            left: 20.0,
            child: SizedBox(
              height: Height(65),
              width: Width(double.infinity),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) {
                  return Mypadding(
                    right: 20.0,
                    child: InkWell(
                      child: Container(
                        height: Height(64.0),
                        width: Width(98.0),
                        child: Mypadding(
                          top: 9.96,
                          child: Column(
                            children: [
                              SizedBox(
                                height: Height(30.07),
                                width: Width(38.0),
                                child: svgImage(tarif[__], 14.5),
                              ),
                              SizedBox(
                                height: Height(13.0),
                                width: Width(50.0),
                                child: Text(
                                  text[__],
                                  style: Write(12.0, FontWeight.w400),
                                ), //svgImage("assets/icons/bussines.svg", 14.5)
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: radius(8),
                          border: Border.all(color: _elevated[__].colorClass),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _elevated[__].colorClass == const Color(0xFFFFCC00)
                              ? _elevated[__].colorClass =
                                  const Color(0xFFD9D9D9)
                              : _elevated[__].colorClass =
                                  const Color(0xFFFFCC00);
                        });
                      },
                    ),
                  );
                },
                itemCount: tarif.length,
              ),
            ),
          ),
          Mypadding(
            top: 20.0,
            left: 19.0,
            child: Text(
              "Price",
              style: Write(18.0, FontWeight.w400),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RangeSlider(
              activeColor: Colors.black,
              divisions: 100,
              labels: RangeLabels("${_sliderCount.start.toStringAsFixed(2)}0\$",
                  "${_sliderCount.end.toStringAsFixed(2)}0\$"),
              values: _sliderCount,
              onChanged: (v) {
                setState(() {
                  _sliderCount = v;
                });
              },
            ),
          ),
          Mypadding(
            top: 10.0,
            left: 19.0,
            bottom: 11.0,
            child: Text(
              "Km",
              style: Write(18.0, FontWeight.w400),
            ),
          ),
          Mypadding(
              right: 20.0,
              left: 20.0,
              child: SizedBox(
                height: Height(32.0),
                width: double.infinity,
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, __) {
                    return Mypadding(
                      left: 6.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _elevated[__].color == const Color(0xFFFFCC00)
                                ? _elevated[__].color = const Color(0xFFD9D9D9)
                                : _elevated[__].color = const Color(0xFFFFCC00);
                          });
                        },
                        child: Text(KM[__]),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          side: borderSide(_elevated[__].color),
                          primary: Colors.transparent,
                          onPrimary: Colors.black,
                        ),
                      ),
                    );
                  },
                  itemCount: KM.length,
                ),
              )),
          Mypadding(
            top: 20.0,
            left: 19.0,
            bottom: 11.0,
            child: Text(
              "Body type",
              style: Write(18.0, FontWeight.w400),
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
                    right: 28.0,
                    child: InkWell(
                      child: Container(
                        height: Height(69.0),
                        width: Width(62.0),
                        child: Mypadding(
                          top: 5,
                          child: Column(
                            children: [
                              SizedBox(
                                  height: Height(35.0),
                                  width: Width(55.0),
                                  child: const Image(
                                      image: AssetImage(
                                          "assets/cars/mashinaturi.png"),
                                      fit: BoxFit.cover)),
                              SizedBox(
                                height: Height(14.0),
                                width: Width(55.0),
                                child: Center(
                                    child: Text(
                                  carType[__],
                                  style: Write(12.0, FontWeight.w400),
                                )),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: radius(8),
                            border:
                                Border.all(color: _elevated[__].colorBrend)),
                      ),
                      onTap: () {
                        setState(() {
                          _elevated[__].colorBrend == const Color(0xFFFFCC00)
                              ? _elevated[__].colorBrend =
                                  const Color(0xFFD9D9D9)
                              : _elevated[__].colorBrend =
                                  const Color(0xFFFFCC00);
                        });
                      },
                    ),
                  );
                },
                itemCount: 4,
              ),
            ),
          ),
          Mypadding(
            top: 25.0,
            right: 20.0,
            left: 20.0,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/showList');
              },
              child: Container(
                height: Height(54.0),
                width: Width(335.0),
                child: Center(
                  child: Text(
                    "Apply filter",
                    style:
                        Write(19.0, FontWeight.w700, const Color(0xFFFFFFFF)),
                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF272727),
                  borderRadius: radius(8),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
