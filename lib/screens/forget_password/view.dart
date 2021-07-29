import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/const/colors.dart';
import 'package:talabat/widgets/custom_widget.dart';

class ForgetPassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
      var formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: WhColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: WhColor,
        centerTitle: true,
        title: Text(
          "نسيت كلمه المرور",
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
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: defaultFormField(
                  controller: emailController,
                  label: "البريد الإلكتروني",
                  type: TextInputType.emailAddress,
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'إجباري';
                    }
                    return null;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: defaultButton(
                width: double.infinity,
                background: OrColor,
                text: "نسيت كلمة المرور",
                function: () {
                  if (formKey.currentState.validate()) {
                    print(emailController.text);
                  }
                  return null;
                },
              ),
            ),
          ],
        ),

      ),
    );
  }
}
