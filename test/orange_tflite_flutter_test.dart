import 'package:flutter_test/flutter_test.dart';
import 'package:orange_tflite_flutter/orange_tflite_flutter.dart';
import 'package:orange_tflite_flutter/orange_tflite_flutter_platform_interface.dart';
import 'package:orange_tflite_flutter/orange_tflite_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOrangeTfliteFlutterPlatform
    with MockPlatformInterfaceMixin
    implements OrangeTfliteFlutterPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OrangeTfliteFlutterPlatform initialPlatform =
      OrangeTfliteFlutterPlatform.instance;

  test('$MethodChannelOrangeTfliteFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOrangeTfliteFlutter>());
  });

  test('getPlatformVersion', () async {
    // OrangeTfliteFlutter orangeTfliteFlutterPlugin = OrangeTfliteFlutter();
    // MockOrangeTfliteFlutterPlatform fakePlatform = MockOrangeTfliteFlutterPlatform();
    // OrangeTfliteFlutterPlatform.instance = fakePlatform;

    // expect(await orangeTfliteFlutterPlugin.getPlatformVersion(), '42');
  });
}
