import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:talabat/const/colors.dart';
import 'package:talabat/widgets/custom_widget.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var nameController = TextEditingController();

  var lastController = TextEditingController();

  var emailController = TextEditingController();

  var PasswordlController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isChecked = false;

  bool isPasworrdShow = true;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Colors.red;
    }

    return Scaffold(
      backgroundColor: WhColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: WhColor,
        centerTitle: true,
        title: Text(
          "تسجيل مستخدم جديد",
          style: TextStyle(
            color: BlColor,
          ),
        ),
        leading: Icon(
          Icons.arrow_forward,
          color: BlColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              defaultFormField(
                  controller: nameController,
                  label: "الإسم الأول",
                  type: TextInputType.name,
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'إجباري';
                    }
                    return null;
                  }),
              SizedBox(height: 20,),
              defaultFormField(
                  controller: lastController,
                  label: "الإسم الأخير",
                  type: TextInputType.name,
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'إجباري';
                    }
                    return null;
                  }),
              SizedBox(height: 20,),
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
              SizedBox(height: 20,),
              defaultFormField(
                controller: PasswordlController,
                label: "كلمه المرور",
                sufixText: Text(isPasworrdShow ? "إظهار" : "إخفاء"),
                suffixPressed: () {
                  setState(() {
                    isPasworrdShow = !isPasworrdShow;
                  });
                },
                isPassword: isPasworrdShow,
                type: TextInputType.visiblePassword,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'إجباري';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              Text(
                "كلمه المرور يجب ان تتألف من 6 الي 16 حرف",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Checkbox(
                    side: BorderSide(style: BorderStyle.solid),
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                  Text(
                    "إستلم أخر العروض و الخصومات",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              defaultButton(
                width: double.infinity,
                background: OrColor,
                text: "تسجيل مستخدم جديد",
                function: () {
                  if (formKey.currentState.validate()) {
                    print(emailController.text);
                    print(PasswordlController.text);
                  }
                },
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("عند تسجيل الحساب أن توافق علي",
                  ),
                  Text(
                    "سياسه الخصوصية",
                    style: TextStyle(
                      color: OrColor,
                    ),
                  ),
                  Text("و"),
                  Text(
                    "الشروط ",
                    style: TextStyle(
                      color: OrColor,
                    ),
                  ),
                ],
              ),
              Text(
                "والاحكام ",
                style: TextStyle(
                  color: OrColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
