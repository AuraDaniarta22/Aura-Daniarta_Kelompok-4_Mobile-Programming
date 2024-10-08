import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: OpsiScreen(),
  ));
}
// ignore_for_file: must_be_immutable
class OpsiScreen extends StatelessWidget {
  OpsiScreen({super.key});

  TextEditingController wrapperoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(
                  left: 12,
                  top: 214,
                  right: 12,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 136,
                      child: TextFormField(
                        focusNode: FocusNode(),
                        autofocus: true,
                        controller: wrapperoneController,
                        style: const TextStyle(
                          color: Color(0XFF0F1828),
                          fontSize: 18,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ),
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(
                          hintText: "Masuk Sebagai",
                          hintStyle: TextStyle(
                            color: Color(0XFF0F1828),
                            fontSize: 18,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(12, 4, 12, 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    _buildAnonymousSection(context),
                    const SizedBox(height: 4)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAnonymousSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: 72,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFFF7F7FC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    24,
                  ),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 24,
                ),
              ),
              onPressed: () {},
              child: const Text(
                "ANONYMUS",
                style: TextStyle(
                  color: Color(0XFF0F1828),
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.only(
              left: 132,
              top: 18,
              bottom: 18,
            ),
            decoration: BoxDecoration(
              color: const Color(0XFFF7F7FC),
              borderRadius: BorderRadius.circular(
                24,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0X3F000000),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(
                    0,
                    4,
                  ),
                )
              ],
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "As Rinal",
                  style: TextStyle(
                    color: Color(0XFF0F1828),
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10)
              ],
            ),
          )
        ],
      ),
    );
  }
}
