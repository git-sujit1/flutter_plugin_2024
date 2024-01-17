import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_plugin_2024_platform_interface.dart';

/// An implementation of [FlutterPlugin2024Platform] that uses method channels.
class MethodChannelFlutterPlugin2024 extends FlutterPlugin2024Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_plugin_2024');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
