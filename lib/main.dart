import 'package:bottom_navigation/loginPage/login_Page.dart';
import 'package:bottom_navigation/signInPage/sign_in_screen.dart';
import 'package:bottom_navigation/signUppPage/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginPage(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/box.jpg'),
            Container(
              width: size.width * 0.8,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(49),
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SignIn()));
                  },
                  child: Text('Login',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  color: Colors.amber,
                ),
              ),
            ),
            Container(
              width: size.width * 0.8,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(49),
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SignUpPage()));
                  },
                  child: Text('Sign Up',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
