//
//  TPReqObj.m
//  TPSDK
//
//  Created by NehcNoraa on 2018/9/5.
//  Copyright © 2018年 TokenPocket. All rights reserved.
//

#import "TPReqObj.h"


NSString *const kTPSDKActionLogin = @"login";
NSString *const kTPSDKActionTransfer = @"transfer";
NSString *const kTPSDKActionPushTransaction = @"pushTransaction";


#pragma mark ~~~~ TPReqObj ~~~~

@implementation TPReqObj

- (instancetype)init {
    if (self = [super init]) {
        _protocol = @"TPProtocol";
        _version = [[[NSBundle bundleForClass:[self class]] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    }
    return self;
}


@end



#pragma mark ~~~~~~~~~~~~~~~~~~~~~~~
#pragma mark ~~~~ TPLoginObj ~~~~

@implementation TPLoginObj

- (instancetype)init {
    if (self = [super init]) {
        self.action = kTPSDKActionLogin;
    }
    return self;
}

@end


#pragma mark ~~~~~~~~~~~~~~~~~~~~~~~
#pragma mark ~~~~ TPTransferObj ~~~~

@implementation TPTransferObj

- (instancetype)init {
    if (self = [super init]) {
        self.action = kTPSDKActionTransfer;
    }
    return self;
}

@end



#pragma mark ~~~~~~~~~~~~~~~~~~~~~~~
#pragma mark ~~~~ TPPushTransactionObj ~~~~


@implementation TPPushTransactionObj

- (instancetype)init {
    if (self = [super init]) {
        self.action = kTPSDKActionPushTransaction;
    }
    return self;
}

@end
