import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'zendesk_flutter_combination_platform_interface.dart';

/// An implementation of [ZendeskFlutterCombinationPlatform] that uses method channels.
class MethodChannelZendeskFlutterCombination extends ZendeskFlutterCombinationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('zendesk_flutter_combination');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
