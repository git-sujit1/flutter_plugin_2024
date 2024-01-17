import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_plugin_2024/flutter_plugin_2024.dart';
import 'package:flutter_plugin_2024/flutter_plugin_2024_platform_interface.dart';
import 'package:flutter_plugin_2024/flutter_plugin_2024_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPlugin2024Platform
    with MockPlatformInterfaceMixin
    implements FlutterPlugin2024Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPlugin2024Platform initialPlatform = FlutterPlugin2024Platform.instance;

  test('$MethodChannelFlutterPlugin2024 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPlugin2024>());
  });

  test('getPlatformVersion', () async {
    FlutterPlugin2024 flutterPlugin2024Plugin = FlutterPlugin2024();
    MockFlutterPlugin2024Platform fakePlatform = MockFlutterPlugin2024Platform();
    FlutterPlugin2024Platform.instance = fakePlatform;

    expect(await flutterPlugin2024Plugin.getPlatformVersion(), '42');
  });
}
