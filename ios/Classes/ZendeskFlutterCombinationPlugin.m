#import "ZendeskFlutterCombinationPlugin.h"
#if __has_include(<zendesk_flutter_combination/zendesk_flutter_combination-Swift.h>)
#import <zendesk_flutter_combination/zendesk_flutter_combination-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "zendesk_flutter_combination-Swift.h"
#endif

@implementation ZendeskFlutterCombinationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftZendeskFlutterCombinationPlugin registerWithRegistrar:registrar];
}
@end
