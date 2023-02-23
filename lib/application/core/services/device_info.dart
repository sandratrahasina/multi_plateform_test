import "package:flutter/material.dart";
import "package:universal_platform/universal_platform.dart";

class DeviceOS {
  static bool isIOS = UniversalPlatform.isIOS;
  static bool isAndroid = UniversalPlatform.isAndroid;
  static bool isLinux = UniversalPlatform.isLinux;
  static bool isWindow = UniversalPlatform.isWindows;
  static bool isMacOS = UniversalPlatform.isMacOS;
  static bool isWeb = UniversalPlatform.isWeb;
}

enum FormFactorType { monitor, tablet, largePhone, smallPhone}

class DeviceScreen {
  static FormFactorType get(BuildContext context){
    double shortestSide = MediaQuery.of(context).size.shortestSide;
    if(shortestSide <= 300) return FormFactorType.smallPhone;
    if(shortestSide <= 600) return FormFactorType.largePhone;
    if(shortestSide <= 900) return FormFactorType.tablet;

    return FormFactorType.monitor;
  }
}