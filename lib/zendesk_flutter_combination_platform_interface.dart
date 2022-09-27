import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'zendesk_flutter_combination_method_channel.dart';

abstract class ZendeskFlutterCombinationPlatform extends PlatformInterface {
  /// Constructs a ZendeskFlutterCombinationPlatform.
  ZendeskFlutterCombinationPlatform() : super(token: _token);

  static final Object _token = Object();

  static ZendeskFlutterCombinationPlatform _instance = MethodChannelZendeskFlutterCombination();

  /// The default instance of [ZendeskFlutterCombinationPlatform] to use.
  ///
  /// Defaults to [MethodChannelZendeskFlutterCombination].
  static ZendeskFlutterCombinationPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ZendeskFlutterCombinationPlatform] when
  /// they register themselves.
  static set instance(ZendeskFlutterCombinationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
