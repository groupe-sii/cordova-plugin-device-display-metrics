#import <Cordova/CDV.h>

@interface DeviceDisplayMetrics : CDVPlugin

- (void) getDpi:(CDVInvokedUrlCommand*)command;

@end