import 'package:cars/model/data.dart';
import 'package:cars/model/show_config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: radius(8),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Mypadding(
            top: 44.0,
            left: 21.3,
            right: 289.0,
            child: InkWell(
              child: Row(
                children: const [
                  Icon(Icons.arrow_back_ios),
                  Text("Back"),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Mypadding(
            top: 70.0,
            left: 93.0,
            child: Text(
              "Enter verification code",
              style: TextStyle(
                  fontSize: Height(20.0), fontWeight: FontWeight.w700),
            ),
          ),
          Mypadding(
            top: 10,
            left: 117.0,
            child: SizedBox(
              height: Height(30.0),
              width: Width(141.0),
              child: Text(
                "Enter OPT code send to your mobile number",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: Height(14), fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Mypadding(
            top: 37.88,
            left: 52.0,
            right: 52.0,
            child: Builder(
              builder: (context) {
                return Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(0.0),
                          padding: const EdgeInsets.all(0.0),
                          child: PinPut(
                            fieldsCount: 4,
                            onSubmit: (String pin) =>
                                Navigator.pushNamed(context, '/home_page'),
                            focusNode: _pinPutFocusNode,
                            controller: _pinPutController,
                            submittedFieldDecoration:
                                _pinPutDecoration.copyWith(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            selectedFieldDecoration: _pinPutDecoration,
                            followingFieldDecoration:
                                _pinPutDecoration.copyWith(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: const Color(0xFFB4B4B4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Mypadding(
            top: 10.88,
            left: 52.0,
            right: 126.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "The code didn't come?",
                  style: TextStyle(
                      color: const Color(0xFFB4B4B4),
                      fontSize: Height(12),
                      fontWeight: FontWeight.w400),
                ),
                Container(
                  height: Height(19.0),
                  width: Width(68.0),
                  child: Center(
                    child: Text("Send again",
                        style: TextStyle(
                            color: const Color(0xFF000000),
                            fontSize: Height(12),
                            fontWeight: FontWeight.w400)),
                  ),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFCC00), borderRadius: radius(3)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
