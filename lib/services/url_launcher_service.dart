import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService{

  Future<void> urlLauncher(String url) async {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
}