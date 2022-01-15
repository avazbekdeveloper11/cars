import 'package:cars/model/show_config/size_config.dart';
import 'package:flutter/material.dart';

class showPage extends StatelessWidget {
  const showPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              color: const Color(0xFFE5E5E5),
              child: Center(
                child: SizedBox(
                  height: Height(99.66),
                  width: Width(282),
                  child: const Image(
                    image: AssetImage('assets/images/show_logo.png'),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: const Color(0xFFE5E5E5),
              child: Column(
                children: [
                  InkWell(
                    child: Container(
                      height: Height(54),
                      width: Width(335),
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: Height(19),
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xFF272727),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/sign_in");
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: Height(56),
                      width: Width(335),
                      child: Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: Height(19),
                              color: const Color(0xFF272727),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      margin:  EdgeInsets.only(top: Height(10)),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFF272727), width: 1),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/showList");
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
