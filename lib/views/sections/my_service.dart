import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {

    final title = Text("Mes services",
      style: GoogleFonts.montserrat(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
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
            ListTile(
              leading: const FaIcon(FontAwesomeIcons.code, color: Colors.black,),
              title: Text("Développement d'applications mobiles multiplateformes", style: GoogleFonts.montserrat(
                fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold
              ),),
              titleAlignment: ListTileTitleAlignment.titleHeight,
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ListBody(
                  children: [
                    Text("Création d'applications pour iOS et Android à partir d'une seule base de code.", style: GoogleFonts.montserrat(
                      fontSize: 10.5
                    ),),
                    Text("Développement de solutions personnalisées adaptées aux besoins spécifiques.", style: GoogleFonts.montserrat(
                        fontSize: 10.5
                    ),),
                    Text("Optimisation des performances sur toutes les plateformes.", style: GoogleFonts.montserrat(
                        fontSize: 10.5
                    ),),

                    //Text("Développement de solutions personnalisées adaptées aux besoins spécifiques."),
                    //Text("Optimisation des performances sur toutes les plateformes")
                  ],
                ),
              ),
            ),
            Divider(color: Colors.black,),

          ],
        ),
      ),
    );
  }
}
