# MqttEx

[![CI Status](http://img.shields.io/travis/xuwq/MqttEx.svg?style=flat)](https://travis-ci.org/xuwq/MqttEx)
[![Version](https://img.shields.io/cocoapods/v/MqttEx.svg?style=flat)](http://cocoapods.org/pods/MqttEx)
[![License](https://img.shields.io/cocoapods/l/MqttEx.svg?style=flat)](http://cocoapods.org/pods/MqttEx)
[![Platform](https://img.shields.io/cocoapods/p/MqttEx.svg?style=flat)](http://cocoapods.org/pods/MqttEx)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

``` objc
-(void) connect {
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

-(void) stop {
    mqttClient.keepAlive = 0;
}


```

## Requirements

## Installation

MqttEx is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MqttEx"
```

## Author

xuwq, xuwenquan2015@icloud.com

## License

MqttEx is available under the MIT license. See the LICENSE file for more info.
