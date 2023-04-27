// ignore_for_file: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class LinkOpener {
  void htmlOpenGitHub() {
    String url = 'https://github.com/juliailina/';
    html.window.open(url, 'GitHub');
  }

  void htmlOpenLinkedIn() {
    String url = 'https://linkedin.com/in/juliailina/';
    html.window.open(url, 'LinkedIn');
  }

  void htmlOpenTelegram() {
    String url = 'https://t.me/the_julz/';
    html.window.open(url, 'Telegram');
  }

  void htmlOpenGooglePlay() {
    String url = 'https://play.google.com/store/apps/';
    html.window.open(url, 'GooglePlay');
  }

  void htmlOpenAppStore() {
    String url = 'https://www.apple.com/app-store/';
    html.window.open(url, 'AppStore');
  }
}
