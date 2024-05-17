import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'battery_optimizer_method_channel.dart';

abstract class BatteryOptimizerPlatform extends PlatformInterface {
  /// Constructs a BatteryOptimizerPlatform.
  BatteryOptimizerPlatform() : super(token: _token);

  static final Object _token = Object();

  static BatteryOptimizerPlatform _instance = MethodChannelBatteryOptimizer();

  /// The default instance of [BatteryOptimizerPlatform] to use.
  ///
  /// Defaults to [MethodChannelBatteryOptimizer].
  static BatteryOptimizerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BatteryOptimizerPlatform] when
  /// they register themselves.
  static set instance(BatteryOptimizerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> isIgnoringBatteryOptimizations() {
    throw UnimplementedError('isIgnoringBatteryOptimizations() has not been implemented.');
  }

  Future<bool> openBatteryOptimizationSettings() {
    throw UnimplementedError('openBatteryOptimizationSettings() has not been implemented.');
  }

  Future<bool> stopOptimizingBatteryUsage() {
    throw UnimplementedError('stopOptimizingBatteryUsage() has not been implemented.');
  }
}
