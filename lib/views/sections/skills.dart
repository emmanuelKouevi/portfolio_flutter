import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/service_item.dart';

class SkillView extends StatelessWidget {
  const SkillView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> devAppMultiDevices = [
      "Conception et développement d'applications mobiles de hautes qualités (Flutter et Dart)"
    ];

    final List<String> uiIntegration = [
      "Intégration UI / UX"
    ];

    final List<String> stateManagement = [
      "Provider, Get X, Bloc.",
    ];

    final List<String> designPattern = [
      "MVVM, MVC.",
    ];

    final List<String> maintainAndSupport = [
      "Flutter Driver, Mockito.",
    ];

    final List<String> databaseManagement = [
      "MySQL, PostgreSQL, Firebase.",
    ];

    final List<String> apiIntegration = [
      "RESTful APIs, GraphQL.",
    ];

    final List<String> appDistribution = [
      "Google Play Store, App Store, Huawei App Gallery.",
    ];

    final title = Text("Mes compétences",
      style: GoogleFonts.montserrat(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
    );

    final description = Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText("""Développeur Flutter passionné avec 5 années d'expériences, je conçois et développe des applications mobiles cross-platform performantes en combinant expertise technique, design intuitif et code optimisé."""
              , textStyle: GoogleFonts.montserrat(
                  fontSize: 13, color: Colors.black.withOpacity(0.9), letterSpacing: 1.3, wordSpacing: 3
              ), speed: const Duration(microseconds: 10000)),
        ],
        isRepeatingAnimation: false,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: title,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  description,
                  const SizedBox(height: 5,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/9,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset("assets/icons/flutter.png", height: 60,),
                        Image.asset("assets/icons/dart.png", height: 60,),
                        Image.asset("assets/icons/firebase.png", height: 60,),
                        Image.asset("assets/icons/mysql.png", height: 60,),
                        Image.asset("assets/icons/postgres.png", height: 60,),
                        Image.asset("assets/icons/git.png", height: 60,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/1.5,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      padding: const EdgeInsets.only(bottom: 30),
                      children: [
                        ServiceItem(
                            iconData: FontAwesomeIcons.code,
                            title: "Développement d'applications mobiles multiplateformes",
                            subtitles: devAppMultiDevices
                        ),
                        ServiceItem(
                            iconData: FontAwesomeIcons.palette,
                            title: "UI / UX",
                            subtitles: uiIntegration
                        ),
                        ServiceItem(
                            iconData: FontAwesomeIcons.layerGroup,
                            title: "Clean Architecture et Design Pattern",
                            subtitles: designPattern
                        ),
                        ServiceItem(
                            iconData: FontAwesomeIcons.memory,
                            title: "Gestion des états",
                            subtitles: stateManagement
                        ),
                        ServiceItem(
                            iconData: FontAwesomeIcons.circleCheck,
                            title: "Tests unitaires et d'intégration automatisés pour le mobile",
                            subtitles: maintainAndSupport
                        ),
                        ServiceItem(
                            iconData: FontAwesomeIcons.arrowsRotate,
                            title: "Tests et Intégration des services backend et APIs",
                            subtitles: apiIntegration
                        ),
                        ServiceItem(
                            iconData: FontAwesomeIcons.database,
                            title: "Gestion des bases de données",
                            subtitles: databaseManagement
                        ),

                        ServiceItem(
                            iconData: FontAwesomeIcons.cloudArrowUp,
                            title: "Publication des applications",
                            subtitles: appDistribution
                        ),
                      ],
                    ),
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
