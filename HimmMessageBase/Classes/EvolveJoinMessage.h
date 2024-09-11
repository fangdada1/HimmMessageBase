//
//  EvolveJoinMessage.h
//  Runner
//
//  Created by evolve on 24/07/23.
//

#import <RongIMLibCore/RongIMLibCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface EvolveJoinMessage : RCMessageContent <NSCoding,RCMessageContentView>

@property(nonatomic,strong)NSString *content;

+(instancetype)messageWithContent:(NSString *)jsonContent;


@end

NS_ASSUME_NONNULL_END
