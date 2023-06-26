import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              25.heightBox,
              Column(
                children: [
                  customTextField(hint: emailHint, title: email),
                  5.heightBox,
                  customTextField(hint: passwordHint, title: password),
                  5.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {}, 
                      child: forgetpass.text.make(),
                    ),
                  ),
                  15.heightBox,
                  ourButton(
                    color: redColor, title: login, textColor: whiteColor, onPress: () {})
                  .box.width(context.screenWidth-50).make(),
                  15.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  15.heightBox,
                  ourButton(
                    color: lightGolden, title: signup, textColor: redColor, 
                    onPress: () {
                      Get.to(()=> const SignupScreen(),
                      );
                    }).box.width(context.screenWidth-50).make(),
                  20.heightBox,
                  loginwith.text.make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3, 
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 25,
                        child: Image.asset(socialIconList[index],
                        width: 30,
                        ),
                                          ),
                      )),
                  ),
                ],
              ).box.rounded.padding(
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

