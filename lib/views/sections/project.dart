import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mobile/services/url_launcher_service.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {

    final title = Text("Mes projets",
      style: GoogleFonts.montserrat(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
    );

    final description = Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText("""Ci dessous se trouve la liste des projets réalisés pendant mes formations , mes stages en entreprise."""
              , textStyle: GoogleFonts.montserrat(
                  fontSize: 16, color: Colors.black.withOpacity(0.9), letterSpacing: 1.3, wordSpacing: 3
              ), speed: const Duration(microseconds: 10000)),
        ],
        isRepeatingAnimation: false,
      ),
    );
    
    final projects = ListView(
      children: [
        InkWell(
          onTap: () async{
            if(Platform.isAndroid){
              await UrlLauncherService().urlLauncher('https://play.google.com/store/apps/details?id=com.sectester.ariah.app.ariah');
            }else{
              await UrlLauncherService().urlLauncher('https://apps.apple.com/ci/app/ariah-app/id6449749059');
            }
          },
          child: Card(
            color: Colors.white,
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/logoariah.png",
                    height: MediaQuery.of(context).size.height/6,
                    width : MediaQuery.of(context).size.width/6,

                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.6,
                    child: Text("""Ariah vous permet de concevoir des CV professionnels en toute simplicité avec des modèles préconçus et personnalisables, pour attirer l’attention des recruteurs.""", style: GoogleFonts.montserrat(
                      color: Colors.black.withOpacity(0.6)
                    ),),
                  )
                ],
              ),
            ),
          ),
        ),

        InkWell(
          onTap: () async{
            if(Platform.isAndroid){
              await UrlLauncherService().urlLauncher("https://play.google.com/store/apps/details?id=com.bfedition.sovingab&hl=fr");
            }else{
              await UrlLauncherService().urlLauncher("https://apps.apple.com/tr/app/sovingab/id6474798928");
            }
          },
          child: Card(
            color: Colors.white,
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/7,
                    height: MediaQuery.of(context).size.height/7,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/images/sovingab.jpg",
                      height: MediaQuery.of(context).size.height,
                      width : MediaQuery.of(context).size.width,

                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.6,
                    child: Text("""Sovingab est une plateforme mobile (Gabonaise) permettant aux utilisateurs de pouvoir réserver des boissons (Vins) d'excellente qualité en ligne. """, style: GoogleFonts.montserrat(
                        color: Colors.black.withOpacity(0.6)
                    ),),
                  )
                ],
              ),
            ),
          ),
        ),

        InkWell(
          onTap: () async{
            await UrlLauncherService().urlLauncher("https://play.google.com/store/apps/details?id=com.sectester.gbairais.app.gbairais&hl=ln&pli=1");
          },
          child: Card(
            color: Colors.white,
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/gbairai.png",
                    height: MediaQuery.of(context).size.height/6,
                    width : MediaQuery.of(context).size.width/6,

                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.6,
                    child: Text("""Gbairais est une application qui célèbre la liberté d'expression anonyme. Plongez dans une communauté unique ou votre voix peut être entendue sans révéler votre identité.""", style: GoogleFonts.montserrat(
                        color: Colors.black.withOpacity(0.6)
                    ),),
                  )
                ],
              ),
            ),
          ),
        )
      ],
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: projects,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
