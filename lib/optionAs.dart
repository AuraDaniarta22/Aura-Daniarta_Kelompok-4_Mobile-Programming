import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChatsLightScreen extends StatelessWidget {
  ChatsLightScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  color: Color(0XFF0F1828),
                  fontSize: 32,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 6),
              _buildUsernameEmailSection(context),
              const SizedBox(height: 6),
              _buildPasswordSection(context),
              const SizedBox(height: 22),
              SizedBox(
                width: double.maxFinite,
                height: 34,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0XFF1E1E1E),
                    side: const BorderSide(
                      color: Color(0XFF2C2C2C),
                      width: 1.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    visualDensity: const VisualDensity(
                      vertical: -4,
                      horizontal: -4,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 4,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Masuk",
                    style: TextStyle(
                      color: Color(0XFFF5F5F5),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameEmailSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              "Username/Email",
              style: TextStyle(
                color: Color(0XFF0F1828),
                fontSize: 18,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Container(
            width: 302,
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: userNameController,
              style: const TextStyle(
                color: Color(0XFF8C919A),
                fontSize: 18,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                hintText: "Example@gmail.com",
                hintStyle: const TextStyle(
                  color: Color(0XFF8C919A),
                  fontSize: 18,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  borderSide: const BorderSide(
                    color: Color(0X3F000000),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  borderSide: const BorderSide(
                    color: Color(0X3F000000),
                    width: 1,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  borderSide: const BorderSide(
                    color: Color(0X3F000000),
                    width: 1,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  borderSide: const BorderSide(
                    color: Color(0X3F000000),
                    width: 1,
                  ),
                ),
                filled: true,
                fillColor: const Color(0XFFF7F7FC),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 8,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              "Passwords",
              style: TextStyle(
                color: Color(0XFF0F1828),
                fontSize: 18,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Container(
            width: 302,
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: passwordController,
              style: const TextStyle(
                color: Color(0XFF8C919A),
                fontSize: 18,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ),
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "* * * * * * *",
                hintStyle: const TextStyle(
                  color: Color(0XFF8C919A),
                  fontSize: 18,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  borderSide: const BorderSide(
                    color: Color(0X3F000000),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  borderSide: const BorderSide(
                    color: Color(0X3F000000),
                    width: 1,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  borderSide: const BorderSide(
                    color: Color(0X3F000000),
                    width: 1,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  borderSide: const BorderSide(
                    color: const Color(0X3F000000),
                    width: 1,
                  ),
                ),
                filled: true,
                fillColor: const Color(0XFFF7F7FC),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 8,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
