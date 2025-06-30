import 'package:flutter/material.dart';
import 'package:portfolio_mobile/views/sections/about_me.dart';
import 'package:portfolio_mobile/views/home_view.dart';
import 'package:portfolio_mobile/views/sections/my_service.dart';
import 'package:portfolio_mobile/views/sections/project.dart';
import 'package:portfolio_mobile/views/sections/skills.dart';
import 'package:portfolio_mobile/views/splash.dart';

const String homeViewRoute = '/';
const String splashViewRoute = 'splash_view';
const String aboutMeViewRoute = 'about_me_view';
const String projectViewRoute = 'project_view';
const String serviceViewRoute = 'service_view';
const String skillViewRoute = 'skill_view';


Route<dynamic> generateRoute(RouteSettings settings) {

  switch (settings.name) {

    case splashViewRoute:
      return MaterialPageRoute(builder: (_) => const SplashView());
      // ignore: dead_code
      break;

    case aboutMeViewRoute:
      return MaterialPageRoute(builder: (_) => const AboutMeView());
      // ignore: dead_code
      break;

    case projectViewRoute:
      return MaterialPageRoute(builder: (_) => const ProjectView());
      // ignore: dead_code
      break;

    case serviceViewRoute:
      return MaterialPageRoute(builder: (_) => const ServiceView());
      // ignore: dead_code
      break;

    case skillViewRoute:
      return MaterialPageRoute(builder: (_) => const SkillView());
      // ignore: dead_code
      break;

    default:
      return MaterialPageRoute(builder: (_) => const HomeView());
  }
}