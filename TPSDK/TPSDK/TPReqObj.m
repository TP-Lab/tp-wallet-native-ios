//
//  TPReqObj.m
//  TPSDK
//
//  Created by NehcNoraa on 2018/9/5.
//  Copyright © 2018年 TokenPocket. All rights reserved.
//

#import "TPReqObj.h"


NSString *const kTPSDKActionSign = @"sign";
NSString *const kTPSDKActionLogin = @"login";
NSString *const kTPSDKActionTransfer = @"transfer";
NSString *const kTPSDKActionPushTransaction = @"pushTransaction";


#pragma mark - TPReqObj -

@implementation TPReqObj

- (instancetype)init {
    if (self = [super init]) {
        _protocol = @"TPProtocol";
        _version = [[[NSBundle bundleForClass:[self class]] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
        if ([self isKindOfClass:TPSignObj.class]) {
            _action = kTPSDKActionSign;
        }else if ([self isKindOfClass:TPLoginObj.class]) {
            _action = kTPSDKActionLogin;
        }else if ([self isKindOfClass:TPTransferObj.class]) {
            _action = kTPSDKActionTransfer;
        }else if ([self isKindOfClass:TPPushTransactionObj.class]) {
            _action = kTPSDKActionPushTransaction;
        }
    }
    return self;
}


@end



#pragma mark - TPLoginObj -

@implementation TPLoginObj

@end


#pragma mark - TPSignObj -

@implementation TPSignObj

@end


#pragma mark - TPTransferObj -

@implementation TPTransferObj

@end


#pragma mark - TPPushTransactionObj -

@implementation TPPushTransactionObj

@end
