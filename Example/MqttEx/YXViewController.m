//
//  YXViewController.m
//  MqttEx
//
//  Created by xuwq on 02/17/2017.
//  Copyright (c) 2017 xuwq. All rights reserved.
//

#import "YXViewController.h"
#import <MqttEx/MqttClientEx.h>

#define MQTT_SERVER @"a.b.com"
#define MQTT_USERNAME @"uname"
#define MQTT_PASSWORD @"pass"


@interface YXViewController (){
    MqttClientEx* mqttClient;
}

@end

@implementation YXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    mqttClient=[[MqttClientEx alloc] initWithClientId:@"some_unique_id"];
    mqttClient.host=MQTT_SERVER;
    mqttClient.username=MQTT_USERNAME;
    mqttClient.password=MQTT_PASSWORD;
    
    [mqttClient connectWithCompletionHandler:^(MQTTConnectionReturnCode code) {
        NSLog(@"mqtt is connected");
        mqttClient.keepAlive = 0;
        [[NSNotificationCenter defaultCenter] postNotificationName:MQTT_CONNECTED object:nil];
    }];
    
    mqttClient.disconnectionHandler=^(NSUInteger code)
    {
        NSLog(@"mqtt is disconnected");
    };
    
}

-(void) example {
    [mqttClient subscribe:@"a" withTag:@"tag1" wittMessageHandler:^(MQTTMessage *message) {
        
    } withCompletionHandler:nil];
    
    [mqttClient subscribe:@"a" withTag:@"tag2" wittMessageHandler:^(MQTTMessage *message) {
        
    } withCompletionHandler:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
