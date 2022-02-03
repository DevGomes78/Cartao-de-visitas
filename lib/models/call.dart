
import 'package:url_launcher/url_launcher.dart';

void fazerLigacao() async {
  const url = "tel:(11)982155598";
  if (await launch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}