import 'package:flutter/material.dart';
import 'package:loginpage_in_firebase/features/user_auth/presentation/widgets/color_hex.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;

  const SplashScreen({super.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget.child!),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringTocolor("e32636"),
            hexStringTocolor("CB2B93"),
            hexStringTocolor("9546C4"),
            hexStringTocolor("5E61F4"),
            hexStringTocolor("00cc99"),

          ], begin: Alignment.topCenter, end: Alignment.bottomCenter,
          ),
        ),
          child: Center(
            child: Text(
              "Welcome Buddy",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
    );
  }
}
