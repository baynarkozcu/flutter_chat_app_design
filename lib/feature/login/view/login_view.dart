import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/custom_login_text_field.dart';
import '../../../components/social_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SvgPicture.asset("assets/images/login.svg", height: 250),
            SafeArea(
              child: Column(
                children: [
                  CustomLoginTextField(
                    label: "Email Address",
                    icon: Icons.mail,
                    inputType: TextInputType.emailAddress,
                    controller: _emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomLoginTextField(
                    label: "Password",
                    icon: Icons.remove_red_eye_sharp,
                    controller: _passwordController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity / 2,
                    child: ElevatedButton(
                      child: const Text("Login"),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 40),
                  const SocialButton(
                    color: Colors.white,
                    textColor: Colors.black,
                    label: "Sign In With Google",
                    image: "assets/images/google.svg",
                  ),
                  SocialButton(
                    color: Colors.blue[900] ?? Colors.blue,
                    textColor: Colors.white,
                    label: "Sign In With Facebook",
                    image: "assets/images/facebook.svg",
                  ),
                  const SocialButton(
                    color: Colors.white,
                    textColor: Colors.black,
                    label: "Sign In With Twitter",
                    image: "assets/images/twitter.svg",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
