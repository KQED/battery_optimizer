import 'dart:io';

import 'battery_optimizer_platform_interface.dart';

class BatteryOptimizer {
  /// checks if the app is ignoring BatteryOptimization.
  ///
  /// Automatically returns false on any platform besides Android.
  /// returns true if the app is ignoring BatteryOptimization.
  /// returns false if the app is not ignoring BatteryOptimization.
  static Future<bool> isIgnoringBatteryOptimizations() async {
    if (!Platform.isAndroid) {
      return false;
    }
    return BatteryOptimizerPlatform.instance.isIgnoringBatteryOptimizations();
  }

  /// opens BatteryOptimizations setting page
  ///
  /// Automatically returns false on any platform besides Android.
  /// Lets the user to navigate to the app and enable/disable BatteryOptimizations.
  ///
  /// returns true if the settings page is opened
  static Future<bool> openBatteryOptimizationSettings() async {
    if (!Platform.isAndroid) {
      return false;
    }
    return BatteryOptimizerPlatform.instance.openBatteryOptimizationSettings();
  }

  /// stops battery optimization
  ///
  /// Automatically returns false on any platform besides Android.
  /// To use this method you need to have the following permissions in manifest file:
  ///
  /// `<uses-permission  android:name="android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"/>`
  ///
  /// WARNING: It uses the intent(ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS).
  /// Which is not recommended unless its an exemption case.
  ///
  /// Read more here : https://developer.android.com/training/monitoring-device-state/doze-standby#exemption-cases
  ///
  /// returns true if stop optimization dialog is shown
  static Future<bool> stopOptimizingBatteryUsage() async {
    if (!Platform.isAndroid) {
      return false;
    }
    return BatteryOptimizerPlatform.instance.stopOptimizingBatteryUsage();
  }
}
