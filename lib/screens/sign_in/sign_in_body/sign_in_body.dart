import 'package:cars/model/data.dart';
import 'package:cars/model/show_config/size_config.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final TextEditingController _textEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                      fontSize: Height(20), fontWeight: FontWeight.w700),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        Mypadding(
          top: 42.0,
          left: 103.0,
          child: Text(
            "Welcome Back",
            style: TextStyle(fontSize: Height(26), fontWeight: FontWeight.w700),
          ),
        ),
        Mypadding(
          top: 65.0,
          left: 20.0,
          right: 20.0,
          child: Form(
            child: PhoneNumberForum(),
            key: _formKey,
          ),
        ),
        Mypadding(
          top: 12.0,
          left: 21.0,
          child: const Text(
            "We will send sms your phone number.",
            style: TextStyle(
              color: Color(0xFFB4B4B4),
            ),
          ),
        ),
        const Spacer(),
        Mypadding(
          bottom: 51.0,
          left: 20.0,
          child: InkWell(
            child: Container(
              height: Height(54.0),
              width: Width(335.0),
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: Height(19),
                    fontWeight: FontWeight.w700,
                    color: _textEditingController.text.length == 13
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFF272727),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: _textEditingController.text.length == 13
                    ? const Color(0xFF272727)
                    : const Color(0xFFFFFFFF),
                border: Border.all(color: const Color(0xFF272727), width: 1.0),
                borderRadius: radius(8)
              ),
            ),
            onTap: _textEditingController.text.length == 13
                ? () {
                    Navigator.pushNamed(context, '/password');
                  }
                : null,
          ),
        ),
      ],
    );
  }

  TextFormField PhoneNumberForum() {
    return TextFormField(
      onChanged: (v) {
        setState(() {});
        if (_formKey.currentState!.validate()) {}
      },
      controller: _textEditingController,
      keyboardType: TextInputType.phone,
      validator: (v) {
        if (_textEditingController.text.isEmpty ||
            _textEditingController.text.length > 13) {
          return 'Error';
        }
      },
      decoration: InputDecoration(
        hintText: "Phone number",
        hintStyle: TextStyle(fontSize: Height(16)),
        border: OutlineInputBorder(borderRadius: radius(8)),
        focusedBorder: OutlineInputBorder(
          borderRadius: radius(8),
          borderSide: borderSide(Colors.red),
        ),
      ),
    );
  }
}
