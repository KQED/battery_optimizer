import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'battery_optimizer_platform_interface.dart';

/// An implementation of [BatteryOptimizerPlatform] that uses method channels.
class MethodChannelBatteryOptimizer extends BatteryOptimizerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('battery_optimizer');

  @override
  Future<bool> openBatteryOptimizationSettings() async {
    final result = await methodChannel
        .invokeMethod<bool>('openBatteryOptimizationSettings');
    return result ?? false;
  }

  @override
  Future<bool> isIgnoringBatteryOptimizations() async {
    final result = await methodChannel
        .invokeMethod<bool>('isIgnoringBatteryOptimizations');
    return result ?? false;
  }

  @override
  Future<bool> stopOptimizingBatteryUsage() async {
    final result =
        await methodChannel.invokeMethod<bool>('stopOptimizingBatteryUsage');
    return result ?? false;
  }
}
