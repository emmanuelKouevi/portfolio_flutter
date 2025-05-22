import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mobile/views/widgets/service_item.dart';


class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> devAppMultiDevices = [
      "Création d'applications pour iOS et Android à partir d'une seule base de code.",
      "Développement de solutions personnalisées adaptées aux besoins spécifiques.",
      "Optimisation des performances sur toutes les plateformes."
    ];

    final List<String> designAndInterface = [
      "Conception d'interfaces utilisateur personnalisées.",
      "Création de widgets et composants spécifiques.",
      "Amélioration de l'expérience utilisateur."
    ];

    final List<String> maintainAndSupport = [
      "Mises à jour régulières des applications.",
      "Correction des bugs et résolution des problèmes.",
      "Maintenance continue pour assurer la compatibilité avec les dernières versions des systèmes d'exploitation."
    ];

    final List<String> optimisationAndPerf = [
      "Amélioration des performances de l'application.",
      "Optimisation des animations et temps de chargement.",
      "Configuration du backend pour une exécution optimale."
    ];

    final List<String> testAndQuality = [
      "Tests unitaires et d'intégration.",
      "Assurance qualité complète.",
      "Validation des fonctionnalités."
    ];

    final List<String> integrations = [
      "Connexion aux services Google (Firebase, Maps, Pay).",
      "Intégration avec des bases de données.",
      "Connectivité API."
    ];

    final List<String> advices = [
      "Expertise en architecture d'applications.",
      "Recommandations sur les meilleures pratiques.",
      "Orientation technologique."
    ];

    final List<String> publishAndDistrib = [
      "Préparation pour les stores d'applications.",
      "Publication sur Apple App Store et Google Play Store.",
      "Gestion des mises à jour."
    ];

    final List<String> migrations = [
      "Transfert d'applications existantes vers Flutter.",
      "Adaptation de solutions multiplateformes.",
      "Conservation des fonctionnalités essentielles."
    ];

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
        child: SizedBox(
          height: MediaQuery.of(context).size.height/1.2,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              ServiceItem(
                  iconData: FontAwesomeIcons.code,
                  title: "Développement d'applications mobiles multiplateformes",
                  subtitles: devAppMultiDevices
              ),
              const Divider(endIndent: 1.2,thickness: 0.5,color: Colors.grey,indent: 1.4,),
              ServiceItem(
                  iconData: FontAwesomeIcons.palette,
                  title: "Design et Interface Utilisateur",
                  subtitles: designAndInterface
              ),
              const Divider(endIndent: 1.2,thickness: 0.5,color: Colors.grey,indent: 1.4,),
              ServiceItem(
                  iconData: FontAwesomeIcons.wrench,
                  title: "Maintenance et Support",
                  subtitles: maintainAndSupport
              ),
              const Divider(endIndent: 1.2,thickness: 0.5,color: Colors.grey,indent: 1.4,),
              ServiceItem(
                  iconData: FontAwesomeIcons.chartLine,
                  title: "Optimisation et Performance",
                  subtitles: optimisationAndPerf
              ),
              const Divider(endIndent: 1.2,thickness: 0.5,color: Colors.grey,indent: 1.4,),
              ServiceItem(
                  iconData: FontAwesomeIcons.hotTub,
                  title: "Tests et Qualité",
                  subtitles: testAndQuality
              ),
              const Divider(endIndent: 1.2,thickness: 0.5,color: Colors.grey,indent: 1.4,),
              ServiceItem(
                  iconData: FontAwesomeIcons.link,
                  title: "Intégrations",
                  subtitles: integrations
              ),
              const Divider(endIndent: 1.2,thickness: 0.5,color: Colors.grey,indent: 1.4,),
              ServiceItem(
                  iconData: FontAwesomeIcons.lightbulb  ,
                  title: "Consultation et Conseil",
                  subtitles: advices
              ),
              const Divider(endIndent: 1.2,thickness: 0.5,color: Colors.grey,indent: 1.4,),
              ServiceItem(
                  iconData: FontAwesomeIcons.arrowRight,
                  title: "Migration et Portage",
                  subtitles: migrations
              ),
              const Divider(endIndent: 1.2,thickness: 0.5,color: Colors.grey,indent: 1.4,),
              ServiceItem(
                  iconData: FontAwesomeIcons.upload,
                  title: "Publication et Distribution",
                  subtitles: publishAndDistrib
              ),
            ],
          ),
        )
      ),
    );
  }
}
