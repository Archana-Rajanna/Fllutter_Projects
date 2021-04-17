import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onehealth_login_page/pallete.dart';
import 'package:onehealth_login_page/widgets/background-image.dart';
import 'package:onehealth_login_page/widgets/password-input.dart';
import 'package:onehealth_login_page/widgets/rounded_button.dart';
import 'package:onehealth_login_page/widgets/text-field-input.dart';

class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'images/pexel.jpeg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Create New Account',
              style: kBodyText,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                          child: CircleAvatar(
                            radius: size.width * 0.11,
                            backgroundColor: Colors.grey[400].withOpacity(0.4),
                            child: Icon(
                              Icons.account_circle_sharp,
                              color: kWhite,
                              size: 90,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //  Positioned(
                    //  top: size.height * 0.08,
                    // left: size.width * 0.56,
                    // child: Container(
                    //  height: size.width * 0.1,
                    // width: size.width * 0.1,
                    // decoration: BoxDecoration(
                    ///  shape: BoxShape.circle,
                    //  color: kBlue,
                    //  border: Border.all(color: kWhite, width: 2)),
                    // child: Icon(
                    //  Icons.arrow_upward,
                    //   color: kWhite,
                    //  ),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 6,
                  width: 6,
                ),
                Column(
                  children: [
                    TextInputField(
                      icon: Icons.business,
                      hint: 'business type',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon: Icons.account_circle,
                      hint: 'user name',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon: Icons.email,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon: Icons.phone,
                      hint: 'phone number',
                      inputType: TextInputType.phone,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      icon: Icons.lock,
                      hint: 'password',
                      inputType: TextInputType.visiblePassword,
                      inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      color: kBlue,
                      child: Text(
                        'Register',
                        style: kBodyText,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "already have an account?",
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            'login',
                            style: kBodyText.copyWith(
                                color: kBlue, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
