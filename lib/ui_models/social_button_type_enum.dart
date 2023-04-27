import 'package:resume/utils/link_opener.dart';

class _Constants {
  static const double largeIconHeight = 35;
  static const double smallIconHeight = 18;
}

enum SocialButtonType {
  gitHub,
  gitHubProject,
  linkedIn,
  telegram,
  googlePlay,
  appStore,
}

mapSocialButtonTypesToLinkOpeners(SocialButtonType socialButtonType) {
  switch (socialButtonType) {
    case SocialButtonType.gitHub:
      return LinkOpener().htmlOpenGitHub;
    case SocialButtonType.gitHubProject:
      return LinkOpener().htmlOpenGitHub;
    case SocialButtonType.linkedIn:
      return LinkOpener().htmlOpenLinkedIn;
    case SocialButtonType.telegram:
      return LinkOpener().htmlOpenTelegram;
    case SocialButtonType.googlePlay:
      return LinkOpener().htmlOpenGooglePlay;
    case SocialButtonType.appStore:
      return LinkOpener().htmlOpenAppStore;
  }
}

mapSocialButtonTypesToIconImages(SocialButtonType socialbuttonType) {
  switch (socialbuttonType) {
    case SocialButtonType.gitHub:
      return 'assets/icons/github.png';
    case SocialButtonType.gitHubProject:
      return 'assets/icons/githubproject.png';
    case SocialButtonType.linkedIn:
      return 'assets/icons/linkedin.png';
    case SocialButtonType.telegram:
      return 'assets/icons/telegram.png';
    case SocialButtonType.googlePlay:
      return 'assets/icons/googleplay.png';
    case SocialButtonType.appStore:
      return 'assets/icons/appstore.png';
  }
}

mapSocialButtonTypesToIconHeights(SocialButtonType socialButtonType) {
  switch (socialButtonType) {
    case SocialButtonType.gitHub:
      return _Constants.largeIconHeight;
    case SocialButtonType.gitHubProject:
      return _Constants.smallIconHeight;
    case SocialButtonType.linkedIn:
      return _Constants.largeIconHeight;
    case SocialButtonType.telegram:
      return _Constants.largeIconHeight;
    case SocialButtonType.googlePlay:
      return _Constants.smallIconHeight;
    case SocialButtonType.appStore:
      return _Constants.smallIconHeight;
  }
}
