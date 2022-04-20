enum NetworkPath { POSTS }

extension NetworkPathExtension on NetworkPath {
  String get rawValue {
    switch (this) {
      case NetworkPath.POSTS:
        return "posts.json";
    }
  }
}
