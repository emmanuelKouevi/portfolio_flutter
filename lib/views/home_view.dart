import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mobile/router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    const spacerWidth = SizedBox(width: 10);
    const spacer = SizedBox(height: 10);

    final name = Text("EMMANUEL KOUEVI", style: GoogleFonts.ubuntu(
        fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white
    ),);

    final jobName = AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText('DEVELOPPPEUR MOBILE FLUTTER', textStyle: GoogleFonts.ubuntu(
          fontSize: 17, color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.bold
        ), speed: const Duration(milliseconds: 200)),
      ],
      totalRepeatCount: 2,

    );


    final myAvatar = AvatarGlow(
      child: Container(
        height: MediaQuery.of(context).size.height/4,
        width: MediaQuery.of(context).size.width/3,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage('assets/images/emmanuel_kouevi.jpg'),
          )
        ),
      )
    );

    const  contactIcon = Row(
      children: [
        FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 20,),
        spacerWidth,
        FaIcon(FontAwesomeIcons.linkedin, color: Colors.white, size: 20,),
        spacerWidth,
        FaIcon(FontAwesomeIcons.facebook, color: Colors.white, size: 20,)
      ],
    );

    final header = Container(
      padding: const EdgeInsets.only(top: 40, left: 20 , right: 20),
      height: MediaQuery.of(context).size.height/2,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        )
      ),
      child: Column(
        children: [
          contactIcon,
          const SizedBox(height: 10,),
          Center(
            child: myAvatar,
          ),
          name,
          const SizedBox(height: 8,),
          jobName,
        ],
      ),
    );

    final body = Container(
      padding: const EdgeInsets.only(top: 20, ),
      height: MediaQuery.of(context).size.height/1.1,
      width: MediaQuery.of(context).size.width/1.1,
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, aboutMeViewRoute),
            child: Column(
              children: [
                Image.asset("assets/icons/aboutMe.png", height: 60,),
                spacer,
                Text("À Propos", style: GoogleFonts.akshar(
                    fontWeight: FontWeight.bold, fontSize: 16
                ),)
              ],
            ),
          ),

          Column(
            children: [
              Image.asset("assets/icons/skills.png", height: 60,),
              spacer,
              Text("Compétences", style: GoogleFonts.akshar(
                fontWeight: FontWeight.bold, fontSize: 16
              ),)
            ],
          ),

          GestureDetector(
            onTap: () => Navigator.pushNamed(context, serviceViewRoute),
            child: Column(
              children: [
                Image.asset("assets/icons/services.png", height: 60,),
                spacer,
                Text("Services" , style: GoogleFonts.akshar(
                    fontWeight: FontWeight.bold, fontSize: 16
                ),)
              ],
            ),
          ),

          GestureDetector(
            onTap: () => Navigator.pushNamed(context, projectViewRoute),
            child: Column(
              children: [
                Image.asset("assets/icons/projet.png", height: 60,),
                spacer,
                Text("Projets", style: GoogleFonts.akshar(
                    fontWeight: FontWeight.bold, fontSize: 16
                ),)
              ],
            ),
          ),

        ],
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header,
            Center(
              child: body,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const FaIcon(FontAwesomeIcons.solidEnvelope, color: Colors.white,size: 17),
      ),
    );
  }
}
