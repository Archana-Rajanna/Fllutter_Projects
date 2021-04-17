import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onehealth_login_page/pallete.dart';
import 'package:onehealth_login_page/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: 'images/pexel.jpeg',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    'Welcome to Mobifit',
                    style: TextStyle(
                        color: kWhite,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    icon: Icons.email,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: Icons.lock,
                    hint: 'password',
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'ForgetPassword'),
                    child: Text(
                      "Forget Password?",
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  RoundedButton(
                    buttonName: "Login",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                child: Container(
                  child: Text(
                    "Create New Account ",
                    style: kBodyText,
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: kWhite, width: 1.0))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
