//
//  EvolveLiveCallBeginMessage.m
//  Runner
//
//  Created by fuya07 on 2024/8/12.
//

#import "EvolveLiveCallBeginMessage.h"

@implementation EvolveLiveCallBeginMessage
-(NSData *)encode {
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:self.content forKey:@"content"];
    if (self.extra) {
        [dic setObject:self.extra forKey:@"extra"];
    }
    
    NSData *data = [NSJSONSerialization dataWithJSONObject:dic
                                                   options:kNilOptions
                                                     error:nil];
    
    return data;
}

//将json解码生成消息内容
-(void)decodeWithData:(NSData *)data {
    __autoreleasing NSError* __error = nil;
    if (!data) {
        return;
    }
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data
                                                               options:kNilOptions
                                                                 error:&__error];
    if ([dictionary objectForKey:@"content"]) {
        self.content = dictionary[@"content"];
        self.extra = dictionary[@"extra"];
    }else{
        self.content = [[NSString alloc]initWithData:[NSJSONSerialization dataWithJSONObject:dictionary options:kNilOptions error:nil] encoding:NSUTF8StringEncoding];
    }
}

+ (instancetype)messageWithContent:(NSString *)jsonContent {
    EvolveLiveCallBeginMessage *joinData = [EvolveLiveCallBeginMessage new];
    if (joinData) {
        joinData.content = jsonContent;
    }
    return joinData;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        self.content = [aDecoder decodeObjectForKey:@"content"];
        self.extra = [aDecoder decodeObjectForKey:@"extra"]; }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.content forKey:@"content"];
    [aCoder encodeObject:self.extra forKey:@"extra"];
    
}

+(NSString *)getObjectName {
    return @"HM:RoomLiveCallBeginMsg";
}

//@"[加入直播间消息]"
- (NSString *)conversationDigest {
    return @"";
}
@end
