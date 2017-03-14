//
//  MqttClientEx.h
//  Trader
//
//  Created by xuwq on 15/7/7.
//
//

#import "MQTTKit.h"

// mqqt
#define MQTT_CONNECTED @"mqtt_connected"
#define MQTT_RECONNECTED @"mqtt_reconnected"

@interface MqttClientEx : MQTTClient
{
    BOOL isSubscribing;
}

@property (nonatomic,strong) NSMutableDictionary* messageHandlerDict; // topic-tag-handler

- (void)subscribe:(NSString *)topic wittMessageHandler:(MQTTMessageHandler)messageHandler withCompletionHandler:(MQTTSubscriptionCompletionHandler)completionHandler;
- (void)unsubscribe:(NSString *)topic withCompletionHandler:(void (^)(void))completionHandler;

- (void)subscribe:(NSString *)topic withTag:(NSString*)tag wittMessageHandler:(MQTTMessageHandler)messageHandler withCompletionHandler:(MQTTSubscriptionCompletionHandler)completionHandler;
- (void)unsubscribe:(NSString *)topic withTag:(NSString*)tag withCompletionHandler:(void (^)(void))completionHandler;


-(void) unsubscribeAll;

@end
