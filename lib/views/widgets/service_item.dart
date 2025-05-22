import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final List<String>subtitles;
  const ServiceItem({super.key, required this.iconData, required this.title, required this.subtitles});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FaIcon(iconData, color: Colors.black,),
      title: Text(title, style: GoogleFonts.montserrat(
          fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold
      ),),
      titleAlignment: ListTileTitleAlignment.titleHeight,
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: ListBody(
          children: subtitles.map((e) => Text(
            e, style: GoogleFonts.montserrat(fontSize: 10.5)
          )).toList(),
        ),
      ),
    );
  }
}
