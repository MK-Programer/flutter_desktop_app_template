import 'package:flutter/material.dart';
import 'package:flutter_desktop_app_template/consts/constants.dart';
import 'package:flutter_desktop_app_template/screens/main_screen.dart';
import 'package:flutter_desktop_app_template/widgets/buttons.dart';
import 'package:flutter_desktop_app_template/widgets/text_widget.dart';
import '../responsive.dart';
import '../services/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode _emailTextFocusNode = FocusNode();
  final FocusNode _passwordTextFocusNode = FocusNode();
  @override
  void initState() {
    _emailTextFocusNode.addListener(() {
      setState(() {});
    });
    _passwordTextFocusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailTextFocusNode.dispose();
    _passwordTextFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = Utils(context).getScreenSize.height;
    double width = Utils(context).getScreenSize.width;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Responsive.isMobile(context)
              ? const SizedBox()
              : Expanded(
                  child: Container(
                    height: height,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1556745757-8d76bdb6984b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FzaGllcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Center(
                      child: TextWidget(
                        text: 'Welcome to\nBint al Shat',
                        color: Colors.white,
                        textSize: 60,
                        isTitle: true,
                      ),
                    ),
                  ),
                ),
          Expanded(
            child: Container(
              height: height,
              margin: EdgeInsets.symmetric(
                horizontal: Responsive.isMobile(context)
                    ? height * 0.032
                    : height * 0.12,
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.2),
                    FittedBox(
                      fit: BoxFit.fill,
                      child: Row(
                        children: [
                          const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 60,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextWidget(
                            text: 'Register',
                            color: Colors.grey.shade600,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    FittedBox(
                      fit: BoxFit.fill,
                      child: TextWidget(
                        text:
                            'Hey, Enter your details to get sign in \nto your account.',
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(height: height * 0.064),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            focusNode: _emailTextFocusNode,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: _emailTextFocusNode.hasFocus
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty || !value.contains("@")) {
                                return "Please, enter a valid email address";
                              } else {
                                return null;
                              }
                            },
                            decoration: Const.authInputDecoration.copyWith(
                              hintText: "Email",
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                              ),
                              labelText: 'Email',
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            focusNode: _passwordTextFocusNode,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: _passwordTextFocusNode.hasFocus
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty || !value.contains("@")) {
                                return "Please, enter a valid email address";
                              } else {
                                return null;
                              }
                            },
                            decoration: Const.authInputDecoration.copyWith(
                              hintText: "Password",
                              prefixIcon: const Icon(
                                Icons.password_outlined,
                              ),
                              labelText: 'Password',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.018),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: TextWidget(
                          text: 'Forget Password?',
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    SizedBox(
                      width: double.infinity,
                      child: ButtonsWidget(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MainScreen(),
                            ),
                          );
                        },
                        text: 'Login',
                        backgroundColor: Colors.blue,
                        icon: Icons.login_outlined,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
