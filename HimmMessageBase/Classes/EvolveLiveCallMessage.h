//
//  EvolveLiveCallMessage.h
//  Runner
//
//  Created by fuya07 on 2024/8/12.
//

#import <RongIMLibCore/RongIMLibCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface EvolveLiveCallMessage : RCMessageContent <NSCoding,RCMessageContentView>

@property(nonatomic,strong)NSString *content;

+(instancetype)messageWithContent:(NSString *)jsonContent;

@end

NS_ASSUME_NONNULL_END
