import 'package:flutter/material.dart';
import 'package:talabat/const/colors.dart';
import 'package:talabat/const/strings.dart';
import 'package:talabat/widgets/custom_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: WhColor,
        centerTitle: true,
        title: Text(
          "تسجيل الدخول",
          style: TextStyle(
            color: BlColor,
          ),
        ),
        actions: [
          Icon(
            Icons.arrow_forward_outlined,
            color: BlColor,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 40),
        children: [
          Center(
            child: Text(
              "$title",
              style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.w900, color: OrColor),
            ),
          ),
          Center(
            child: Text(
              "اللي بخاطرك. واصلك",
              style: TextStyle(
                  fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Text(
                "$LoginText",
                style: TextStyle(
                    fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "$SubText",
              style: TextStyle(
                  fontSize: 15,
              ),
            ),
          ),
          BuildGoogleWidget(text: "إستمرار عبر جوجل"),
          BuildFaceWidget(text: "إستمرار عبر الفيسبوك"),
          BuildEmailWidget(text: "إستمرار عبر الإيميل",context: context),
        ],
      ),
    );
  }
}
