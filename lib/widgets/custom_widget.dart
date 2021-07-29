import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:talabat/const/colors.dart';
import 'package:talabat/screens/login/view.dart';

Widget BuildGoogleWidget({
  @required text,
  String GoogleUrl =
      "https://excellentroofing.com/wp-content/uploads/2018/10/google-reviews-icon.png",
  String FaceUrl =
      "https://www.searchpng.com/wp-content/uploads/2019/11/Transparent-Facebook-Icon-715x715.jpg",
  String EmailUrl =
      "https://cdn.iconscout.com/icon/free/png-256/email-613-461703.png",
}) =>
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey),
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20.0),
      height: 60,
      child: Row(
        children: [
          Image.network(
            GoogleUrl,
            width: 40,
          ),
          Expanded(
            child: Center(
              child: Text(
                "$text",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: WhColor,
                ),
              ),
            ),
            flex: 5,
          ),
        ],
      ),
    );

Widget BuildFaceWidget({
  @required text = "null",
  String FaceUrl =
      "https://www.searchpng.com/wp-content/uploads/2019/11/Transparent-Facebook-Icon-715x715.jpg",
}) =>
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20.0),
      height: 60,
      child: Row(
        children: [
          Image.network(
            FaceUrl,
            width: 40,
          ),
          Expanded(
            child: Center(
              child: Text(
                "$text",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: BlColor,
                ),
              ),
            ),
            flex: 5,
          ),
        ],
      ),
    );

Widget BuildEmailWidget({
  @required BuildContext context,
  @required text,
  String EmailUrl =
      "https://cdn.iconscout.com/icon/free/png-256/email-613-461703.png",
}) =>
    InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20.0),
        height: 60,
        child: Row(
          children: [
            Image.network(
              EmailUrl,
              width: 40,
            ),
            Expanded(
              child: Center(
                child: Text(
                  "$text",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: BlColor,
                  ),
                ),
              ),
              flex: 5,
            ),
          ],
        ),
      ),
    );

Widget defaultFormField(
        {@required TextEditingController controller,
        @required TextInputType type,
        Function onSubmit,
        Function onChange,
        bool isPassword = false,
        @required Function validate,
        @required String label,
        Text sufixText,
        Function suffixPressed}) =>
    TextFormField(
      cursorHeight: 30,
      cursorColor: OrColor,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      validator: validate,
      obscureText: isPassword,
      decoration: InputDecoration(
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        labelText: label,
        suffix: sufixText != null
            ? TextButton(
                onPressed: suffixPressed,
                child: sufixText,
              )
            : null,
      ),
    );

Widget defaultButton(
        {@required double width,
        @required Color background,
        @required String text,
        @required Function function}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: background,
      ),
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
              color: WhColor, fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    );
