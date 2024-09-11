//
//  EvolveDuelDiamondChangeMessage.h
//  Runner

#import <RongIMLibCore/RongIMLibCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface EvolveDuelDiamondChangeMessage : RCMessageContent<NSCoding,RCMessageContentView>

@property(nonatomic,strong) NSString* content;

@property(nonatomic,copy)   NSString* extra;

+(instancetype)messageWithContent:(NSString *)jsonContent;

@end

NS_ASSUME_NONNULL_END
