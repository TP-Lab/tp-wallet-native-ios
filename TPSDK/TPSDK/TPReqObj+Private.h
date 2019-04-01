//
//  TPReqObj+Private.h
//  TPSDK
//
//  Created by NehcNoraa on 2018/9/5.
//  Copyright © 2018年 TokenPocket. All rights reserved.
//

#import "TPReqObj.h"



/**  链接category文件，避免使用-ObjC */
FOUNDATION_EXPORT void TPSDKLinkObjCategoryFile(void);



@interface TPReqObj (Private)

/**  生成json对象 */
- (NSDictionary *)tp_toJSONObject;

@end
