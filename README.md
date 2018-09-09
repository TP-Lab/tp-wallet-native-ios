# tp-wallet-native-ios

下载SDK zip文档，解包后拉进项目,需要设置两个项目参数：
    a. 在Project - Build settings 搜索bitcode， 设置为NO;
    b.在Project - Build settings 搜索Other Linker Flags 加一项-ObjC


##开始使用：
    1.在info.plist的URL Types里加一个单独给TokenPocket 的URL scheme，如xxxfortpsdk;
    2.AppDelegate.m
#import <TPSDK/TPApi.h>

-(application:didFinishLaunchingWithOptions:)方法里:
[TPApi registerAppID:@"xxxfortpsdk"];

##发送请求
    TPTransferObj *transfer = [TPTransferObj new];
    [TPApi sendObj:transfer];


