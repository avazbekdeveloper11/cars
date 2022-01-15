import 'package:cars/model/data.dart';
import 'package:cars/model/show_config/size_config.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _textEditingControllername =
      TextEditingController();
  final TextEditingController _textEditingControllernumber =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Mypadding(
            top: 44.0,
            left: 20.3,
            right: 285.0,
            child: InkWell(
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_ios),
                  Text(
                    "Back",
                    style: TextStyle(
                        fontSize: Height(20.0), fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Mypadding(
            top: 21.0,
            child: Text(
              "Create account",
              style: TextStyle(
                  fontSize: Height(26.0), fontWeight: FontWeight.w700),
            ),
          ),
          Mypadding(
            top: 50.0,
            left: 20.0,
            right: 20.0,
            child: nameForum(),
          ),
          Mypadding(
              left: 20.0, right: 20.0, top: 15, child: PhoneNumberForum()),
          Mypadding(
            top: 25.0,
            left: 20.0,
            right: 20.0,
            child: createAccauntButton(context),
          ),
        ],
      ),
    );
  }

  InkWell createAccauntButton(BuildContext context) {
    return InkWell(
      child: Container(
        height: Height(54.0),
        width: Width(335.0),
        child: Center(
          child: Text(
            "Create account",
            style: TextStyle(
              fontSize: Height(19),
              fontWeight: FontWeight.w700,
              color: _textEditingControllernumber.text.length == 13 &&
                      _textEditingControllername.text.isNotEmpty
                  ? const Color(0xFFFFFFFF)
                  : const Color(0xFF272727),
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: _textEditingControllernumber.text.length == 13 &&
                  _textEditingControllername.text.isNotEmpty
              ? const Color(0xFF272727)
              : const Color(0xFFFFFFFF),
          border: Border.all(color: const Color(0xFF272727), width: 1.0),
          borderRadius: radius(8),
        ),
      ),
      onTap: _textEditingControllernumber.text.length == 13 &&
              _textEditingControllername.text.isNotEmpty
          ? () {
              Navigator.pushNamed(context, '/home_page');
            }
          : null,
    );
  }

  TextFormField PhoneNumberForum() {
    return TextFormField(
      onChanged: (v) {
        setState(() {});
      },
      controller: _textEditingControllernumber,
      keyboardType: TextInputType.phone,
      validator: (v) {
        if (_textEditingControllernumber.text.isEmpty ||
            _textEditingControllernumber.text.length > 13) {
          return 'Error';
        }
      },
      decoration: InputDecoration(
        hintText: "Phone number",
        hintStyle: TextStyle(fontSize: Height(16)),
        border: OutlineInputBorder(borderRadius: radius(8)),
        focusedBorder: OutlineInputBorder(
          borderRadius: radius(8),
          borderSide: borderSide(
            const Color(0xFFB4B4B4),
          ),
        ),
      ),
    );
  }

  TextFormField nameForum() {
    return TextFormField(
      onChanged: (v) {
        setState(() {});
      },
      controller: _textEditingControllername,
      decoration: InputDecoration(
        hintText: "Full name",
        hintStyle: TextStyle(fontSize: Height(16)),
        border: OutlineInputBorder(borderRadius: radius(8)),
        focusedBorder: OutlineInputBorder(
          borderRadius: radius(8),
          borderSide: borderSide(const Color(0xFFB4B4B4)),
        ),
      ),
    );
  }
}
