import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mobile/router.dart' as router;

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // Define time of visibility app
  startTimer() async{
    var duration = const Duration(seconds: 6);
    return Timer(duration, navigationPage);
  }

  // callback function for Startimer() method. Navigation after splash screen
  void navigationPage(){
    bool viewHome = true;
    String showToTabs= router.homeViewRoute;
    if(viewHome){
      showToTabs = router.homeViewRoute;
    }
    Navigator.pushReplacementNamed(context, showToTabs);
  }

  @override
  void initState(){
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final customizeLogo = Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("E K", style: GoogleFonts.ubuntu(
            fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black
          ),),
          Text("Portfolio", style: GoogleFonts.ubuntu(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Center(
          child: customizeLogo,
        ),
      ),
    );
  }
}
