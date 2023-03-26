import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'orange_tflite_flutter_platform_interface.dart';

/// An implementation of [OrangeTfliteFlutterPlatform] that uses method channels.
class MethodChannelOrangeTfliteFlutter extends OrangeTfliteFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('orange_tflite_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
