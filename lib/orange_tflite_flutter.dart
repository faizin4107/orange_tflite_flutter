// import 'orange_tflite_flutter_platform_interface.dart';

// class OrangeTfliteFlutter {
//   Future<String?> getPlatformVersion() {
//     return OrangeTfliteFlutterPlatform.instance.getPlatformVersion();
//   }
// }

library orange_tflite_flutter;

import 'package:ffi/ffi.dart';

import 'src/bindings/bindings.dart';

export 'src/bindings/types.dart';
export 'src/delegate.dart';
export 'src/delegates/gpu_delegate.dart';
export 'src/delegates/metal_delegate.dart';
export 'src/delegates/xnnpack_delegate.dart';
export 'src/interpreter.dart';
export 'src/interpreter_options.dart';
export 'src/quanitzation_params.dart';
export 'src/tensor.dart';
export 'src/util/list_shape_extension.dart';
export 'src/util/byte_conversion_utils.dart';

/// tflite version information.
String get version => tfLiteVersion().toDartString();
