import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:talabat/const/colors.dart';
import 'package:talabat/const/strings.dart';
import 'package:talabat/screens/forget_password/view.dart';
import 'package:talabat/screens/signup/view.dart';
import 'package:talabat/widgets/custom_widget.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var PasswordlController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: WhColor,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_forward_sharp,
          color: BlColor,
        ),
        title: Text(
          "تسجيل الدخول",
          style: TextStyle(
            color: BlColor,
          ),
        ),


      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "$titleLogin",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
              defaultFormField(
                  controller: emailController,
                  label: "البريد الإلكتروني",
                  type: TextInputType.emailAddress,
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'إجباري';
                    }
                    return null;
                  }),
              SizedBox(
                height: 20,
              ),
              defaultFormField(
                controller: PasswordlController,
                label: "كلمه المرور",
                sufixText: Text("إظهار"),
                isPassword: true,
                type: TextInputType.visiblePassword,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'إجباري';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              defaultButton(
                width: double.infinity,
                background: OrColor,
                text: "تسجيل الدخول",
                function: () {
                  if (formKey.currentState.validate()) {
                    print(emailController.text);
                    print(PasswordlController.text);
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPassScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "نسيت كلمه المرور؟",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: OrColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "تسجيل مستخدم جديد",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: OrColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
