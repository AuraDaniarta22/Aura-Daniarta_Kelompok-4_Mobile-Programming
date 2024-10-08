import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OptionteacherScreen extends StatelessWidget {
  OptionteacherScreen({super.key});

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
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(
                    left: 12,
                    top: 210,
                    right: 12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 224,
                        margin: const EdgeInsets.only(
                          left: 68,
                          right: 58,
                        ),
                        child: TextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: wrapperoneController,
                          style: const TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 18,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ),
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            hintText: "Guru Bimbingan Konseling",
                            hintStyle: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 18,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                            isDense: true,
                            contentPadding: EdgeInsets.fromLTRB(12, 4, 12, 12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildTeacherOptions(context)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTeacherOptions(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 18,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return const TeacheroptionsItemWidget();
        },
      ),
    );
  }
}

class TeacheroptionsItemWidget extends StatelessWidget {
  const TeacheroptionsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 4,
                bottom: 2,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                child: Image.asset(
                  "assets/images/img_frame_3293.png",
                  height: 48,
                  width: 48,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ibu Wandahara",
                  style: TextStyle(
                    color: Color(0XFF0F1828),
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Bimbingan Konseling Kelas 11",
                  style: TextStyle(
                    color: Color(0XFFADB5BD),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
