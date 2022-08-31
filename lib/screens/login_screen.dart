import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> bottomNavTitles = [
    "Home",
    "Tour",
    "Courses",
    "Articles",
    "Blog",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://wallpaperaccess.com/full/84248.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(172, 72, 173, 255),
                        Color.fromARGB(122, 68, 137, 255),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.code,
                            color: Colors.white,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            'Mostafa Khaled',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Learn to code.\nInteractively.\nFor free.',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 48.0,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 5.0,
                                  color: Color.fromARGB(153, 46, 46, 46),
                                ),
                              ],
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 46, 46, 46),
                                  maxRadius: 15.0,
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  'Watch Demo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 400,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: bottomNavTitles
                              .map(
                                (e) => Text(
                                  e,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              color: const Color.fromARGB(52, 117, 117, 117),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 40.0,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        FontAwesomeIcons.mailBulk,
                        size: 15.0,
                        color: Color.fromARGB(155, 255, 255, 255),
                      ),
                      hintText: "Email",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(127, 255, 255, 255),
                      ),
                      filled: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                      fillColor: const Color.fromARGB(31, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    obscureText: true,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        FontAwesomeIcons.lock,
                        size: 15.0,
                        color: Color.fromARGB(155, 255, 255, 255),
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(127, 255, 255, 255),
                      ),
                      filled: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                      fillColor: const Color.fromARGB(31, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.all(16.0),
                          ),
                          child: Text("Login"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
