#import "JineePlugin.h"
#import <jinee/jinee-Swift.h>

@implementation JineePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJineePlugin registerWithRegistrar:registrar];
}
@end
