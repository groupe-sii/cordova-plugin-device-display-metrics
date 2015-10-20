#import "DeviceDisplayMetrics.h"
#import "sys/utsname.h"

@implementation DeviceDisplayMetrics

- (NSString*) platformCode {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString* platform =  [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    return platform;
}

- (NSString*) platformName {
    NSString* platform = [self platformCode];
    
    if ([platform isEqualToString:@"iPhone1,1"])    return @"iPhone 1G";
    if ([platform isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    if ([platform isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    if ([platform isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,3"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    
    if ([platform isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,2"])    return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,3"])    return @"iPhone 5C";
    if ([platform isEqualToString:@"iPhone5,4"])    return @"iPhone 5C";
    
    if ([platform isEqualToString:@"iPhone6,1"])    return @"iPhone 5s";
    if ([platform isEqualToString:@"iPhone6,2"])    return @"iPhone 5s";
    
    if ([platform isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    if ([platform isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    
    if ([platform isEqualToString:@"iPhone8,1"])    return @"iPhone 6S";
    if ([platform isEqualToString:@"iPhone8,2"])    return @"iPhone 6S Plus";
    
    if ([platform isEqualToString:@"iPod1,1"])      return @"iPod Touch 1G";
    if ([platform isEqualToString:@"iPod2,1"])      return @"iPod Touch 2G";
    if ([platform isEqualToString:@"iPod3,1"])      return @"iPod Touch 3G";
    if ([platform isEqualToString:@"iPod4,1"])      return @"iPod Touch 4G";
    if ([platform isEqualToString:@"iPod5,1"])      return @"iPod Touch 5G";
    if ([platform isEqualToString:@"iPod6,1"])      return @"iPod Touch 6G";
    
    if ([platform isEqualToString:@"iPad1,1"])      return @"iPad";
    
    if ([platform isEqualToString:@"iPad2,1"])      return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,2"])      return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,3"])      return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,4"])      return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,5"])      return @"iPad Mini";
    if ([platform isEqualToString:@"iPad2,6"])      return @"iPad Mini";
    if ([platform isEqualToString:@"iPad2,7"])      return @"iPad Mini";
    
    if ([platform isEqualToString:@"iPad3,1"])      return @"iPad 3";
    if ([platform isEqualToString:@"iPad3,2"])      return @"iPad 3";
    if ([platform isEqualToString:@"iPad3,3"])      return @"iPad 3";
    
    if ([platform isEqualToString:@"iPad3,4"])      return @"iPad 4";
    if ([platform isEqualToString:@"iPad3,5"])      return @"iPad 4";
    if ([platform isEqualToString:@"iPad3,6"])      return @"iPad 4";
    
    if ([platform isEqualToString:@"iPad4,1"])      return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,2"])      return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,3"])      return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,4"])      return @"iPad Mini 2";
    if ([platform isEqualToString:@"iPad4,5"])      return @"iPad Mini 2";
    if ([platform isEqualToString:@"iPad4,6"])      return @"iPad Mini 2";
    if ([platform isEqualToString:@"iPad4,7"])      return @"iPad Mini 3";
    if ([platform isEqualToString:@"iPad4,8"])      return @"iPad Mini 3";
    if ([platform isEqualToString:@"iPad4,9"])      return @"iPad Mini 3";
    
    if ([platform isEqualToString:@"iPad5,1"])      return @"iPad Mini 4";
    if ([platform isEqualToString:@"iPad5,2"])      return @"iPad Mini 4";
    if ([platform isEqualToString:@"iPad5,3"])      return @"iPad Air 2";
    if ([platform isEqualToString:@"iPad5,4"])      return @"iPad Air 2";
    
    if ([platform isEqualToString:@"i386"])         return @"Simulator";
    
    return platform;
}

- (NSNumber*) screenResolution {
    NSString* platform = [self platformCode];
    
    if ([platform isEqualToString:@"iPhone1,1"])    return @(163);
    if ([platform isEqualToString:@"iPhone1,2"])    return @(163);
    if ([platform isEqualToString:@"iPhone2,1"])    return @(163);
    
    if ([platform isEqualToString:@"iPhone3,1"])    return @(326);
    if ([platform isEqualToString:@"iPhone3,2"])    return @(326);
    if ([platform isEqualToString:@"iPhone3,3"])    return @(326);
    if ([platform isEqualToString:@"iPhone4,1"])    return @(326);
    
    if ([platform isEqualToString:@"iPhone5,1"])    return @(326);
    if ([platform isEqualToString:@"iPhone5,2"])    return @(326);
    if ([platform isEqualToString:@"iPhone5,3"])    return @(326);
    if ([platform isEqualToString:@"iPhone5,4"])    return @(326);
    
    if ([platform isEqualToString:@"iPhone6,1"])    return @(326);
    if ([platform isEqualToString:@"iPhone6,2"])    return @(326);
    
    if ([platform isEqualToString:@"iPhone7,1"])    return @(401);
    if ([platform isEqualToString:@"iPhone7,2"])    return @(326);
    
    if ([platform isEqualToString:@"iPhone8,1"])    return @(326);
    if ([platform isEqualToString:@"iPhone8,2"])    return @(401);
    
    if ([platform isEqualToString:@"iPod1,1"])      return @(163);
    if ([platform isEqualToString:@"iPod2,1"])      return @(163);
    if ([platform isEqualToString:@"iPod3,1"])      return @(163);
    if ([platform isEqualToString:@"iPod4,1"])      return @(326);
    if ([platform isEqualToString:@"iPod5,1"])      return @(326);
    if ([platform isEqualToString:@"iPod6,1"])      return @(326);
    
    if ([platform isEqualToString:@"iPad1,1"])      return @(132);
    
    if ([platform isEqualToString:@"iPad2,1"])      return @(132);
    if ([platform isEqualToString:@"iPad2,2"])      return @(132);
    if ([platform isEqualToString:@"iPad2,3"])      return @(132);
    if ([platform isEqualToString:@"iPad2,4"])      return @(132);
    if ([platform isEqualToString:@"iPad2,5"])      return @(163);
    if ([platform isEqualToString:@"iPad2,6"])      return @(163);
    if ([platform isEqualToString:@"iPad2,7"])      return @(163);
    
    if ([platform isEqualToString:@"iPad3,1"])      return @(264);
    if ([platform isEqualToString:@"iPad3,2"])      return @(264);
    if ([platform isEqualToString:@"iPad3,3"])      return @(264);
    
    if ([platform isEqualToString:@"iPad3,4"])      return @(264);
    if ([platform isEqualToString:@"iPad3,5"])      return @(264);
    if ([platform isEqualToString:@"iPad3,6"])      return @(264);
    
    if ([platform isEqualToString:@"iPad4,1"])      return @(264);
    if ([platform isEqualToString:@"iPad4,2"])      return @(264);
    if ([platform isEqualToString:@"iPad4,3"])      return @(264);
    if ([platform isEqualToString:@"iPad4,4"])      return @(326);
    if ([platform isEqualToString:@"iPad4,5"])      return @(326);
    if ([platform isEqualToString:@"iPad4,6"])      return @(326);
    if ([platform isEqualToString:@"iPad4,7"])      return @(326);
    if ([platform isEqualToString:@"iPad4,8"])      return @(326);
    if ([platform isEqualToString:@"iPad4,9"])      return @(326);
    
    if ([platform isEqualToString:@"iPad5,1"])      return @(326);
    if ([platform isEqualToString:@"iPad5,2"])      return @(326);
    if ([platform isEqualToString:@"iPad5,3"])      return @(264);
    if ([platform isEqualToString:@"iPad5,4"])      return @(264);
    
    return @(0);
}

- (void)getDpi:(CDVInvokedUrlCommand*)command
{

    NSString* callbackId = [command callbackId];
    //NSString* name = [[command arguments] objectAtIndex:0];
    
    NSNumber* densityDpi = [self screenResolution];
    NSString* densityDpiStr = [densityDpi stringValue];
    
    //NSString* deviceName = [self platformName];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:densityDpiStr];

    [self.commandDelegate sendPluginResult:result callbackId:callbackId];
}

@end