import 'dart:io';

import 'package:flutter/foundation.dart';

class Util {
  static String buildAbsPath(String dir, String path, String name) {
    return (dir == "" ? "" : "$dir/") + buildPath(path, name);
  }

  static String buildPath(String path, String name) {
    return (path == "" ? "" : "$path/") + name;
  }

  static String fmtByte(int byte) {
    if (byte < 1024) {
      return "$byte B";
    } else if (byte < 1024 * 1024) {
      return "${(byte / 1024).toStringAsFixed(2)} KB";
    } else if (byte < 1024 * 1024 * 1024) {
      return "${(byte / 1024 / 1024).toStringAsFixed(2)} MB";
    } else {
      return "${(byte / 1024 / 1024 / 1024).toStringAsFixed(2)} GB";
    }
  }

  static isAndroid() {
    return !kIsWeb && Platform.isAndroid;
  }

  static isIOS() {
    return !kIsWeb && Platform.isIOS;
  }

  static isMobile() {
    return !kIsWeb && (Platform.isAndroid || Platform.isIOS);
  }

  static isDesktop() {
    if (kIsWeb) {
      return false;
    }
    return Platform.isWindows || Platform.isLinux || Platform.isMacOS;
  }

  static isMacos() {
    return !kIsWeb && Platform.isMacOS;
  }

  static isUnix() {
    if (kIsWeb) {
      return false;
    }
    return !Platform.isWindows;
  }

  static isWeb() {
    return kIsWeb;
  }
}
