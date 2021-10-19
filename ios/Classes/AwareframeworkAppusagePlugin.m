#import "AwareframeworkAppusagePlugin.h"
#if __has_include(<awareframework_appusage/awareframework_appusage-Swift.h>)
#import <awareframework_appusage/awareframework_appusage-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "awareframework_appusage-Swift.h"
#endif

@implementation AwareframeworkAppusagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAwareframeworkAppusagePlugin registerWithRegistrar:registrar];
}
@end
