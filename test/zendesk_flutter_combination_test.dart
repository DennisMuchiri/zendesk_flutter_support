import 'package:flutter_test/flutter_test.dart';
import 'package:zendesk_flutter_combination/zendesk_flutter_combination.dart';
import 'package:zendesk_flutter_combination/zendesk_flutter_combination_platform_interface.dart';
import 'package:zendesk_flutter_combination/zendesk_flutter_combination_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockZendeskFlutterCombinationPlatform 
    with MockPlatformInterfaceMixin
    implements ZendeskFlutterCombinationPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ZendeskFlutterCombinationPlatform initialPlatform = ZendeskFlutterCombinationPlatform.instance;

  test('$MethodChannelZendeskFlutterCombination is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelZendeskFlutterCombination>());
  });

  test('getPlatformVersion', () async {
    ZendeskFlutterCombination zendeskFlutterCombinationPlugin = ZendeskFlutterCombination();
    MockZendeskFlutterCombinationPlatform fakePlatform = MockZendeskFlutterCombinationPlatform();
    ZendeskFlutterCombinationPlatform.instance = fakePlatform;
  
    expect(await zendeskFlutterCombinationPlugin.getPlatformVersion(), '42');
  });
}
