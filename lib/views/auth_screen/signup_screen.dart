import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              15.heightBox,
              "Join the $appname".text.fontFamily(bold).white.size(18).make(),
              25.heightBox,
              Column(
                children: [
                  customTextField(hint: nameHint, title: name),
                  5.heightBox,
                  customTextField(hint: emailHint, title: email),
                  5.heightBox,
                  customTextField(hint: passwordHint, title: password),
                  5.heightBox,
                  customTextField(hint: passwordHint, title: retypePassWord),
                  5.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {}, 
                      child: forgetpass.text.make(),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: whiteColor,
                        activeColor: redColor,
                        value: isCheck, 
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        },
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: termAndCond,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                ),
                              ),
                              TextSpan(
                                text: " & ",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  15.heightBox,
                  ourButton(
                    color: isCheck == true ? redColor : lightGrey,
                    title: signup, 
                    textColor: whiteColor, 
                    onPress: () {})
                  .box.width(context.screenWidth-50).make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreadyHaveAccount.text.color(fontGrey).make(),
                      login.text.color(redColor).make().onTap(() {
                        Get.back();
                      }),
                    ],
                  ),
                ],
              )
              .box.rounded.padding(
                const EdgeInsets.all(16)).
                width(context.screenWidth-70).
                shadowSm.white.make(),
            ],
          ),
        ),
      ),
    );
  }
}

