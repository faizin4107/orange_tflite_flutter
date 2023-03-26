import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'orange_tflite_flutter_method_channel.dart';

abstract class OrangeTfliteFlutterPlatform extends PlatformInterface {
  /// Constructs a OrangeTfliteFlutterPlatform.
  OrangeTfliteFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static OrangeTfliteFlutterPlatform _instance = MethodChannelOrangeTfliteFlutter();

  /// The default instance of [OrangeTfliteFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelOrangeTfliteFlutter].
  static OrangeTfliteFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OrangeTfliteFlutterPlatform] when
  /// they register themselves.
  static set instance(OrangeTfliteFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
