import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_plugin_2024_method_channel.dart';

abstract class FlutterPlugin2024Platform extends PlatformInterface {
  /// Constructs a FlutterPlugin2024Platform.
  FlutterPlugin2024Platform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPlugin2024Platform _instance = MethodChannelFlutterPlugin2024();

  /// The default instance of [FlutterPlugin2024Platform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPlugin2024].
  static FlutterPlugin2024Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPlugin2024Platform] when
  /// they register themselves.
  static set instance(FlutterPlugin2024Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
