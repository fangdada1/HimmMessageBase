//
//  EvolveDuelOfficialSystemMessage.h
//  Runner
//
//  Created by himi on 11/08/23.
//

#import <RongIMLibCore/RongIMLibCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface EvolveDuelOfficialSystemMessage : RCMessageContent<NSCoding,RCMessageContentView>

@property(nonatomic,strong)NSString* content;

@property(nonatomic, copy) NSString* extra;

+(instancetype)messageWithContent:(NSString *)jsonContent;

@end

NS_ASSUME_NONNULL_END
