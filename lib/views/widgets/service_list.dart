import 'package:flutter/material.dart';
import 'package:portfolio_mobile/views/widgets/service_item.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) => ServiceItem(iconData: iconData, title: title, subtitles: subtitles),
    );
  }
}
