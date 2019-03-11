#import "TwitterLoginPlugin.h"
#import <flutter_twitter_login/flutter_twitter_login-Swift.h>

@implementation TwitterLoginPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar {
  [TwitterLoginPluginSwift registerWithRegistrar:registrar];
}

@end
