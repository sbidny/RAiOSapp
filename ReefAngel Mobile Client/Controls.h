//
//  Controls.h
//  ReefAngel Mobile Client
//
//  Created by John Wiebalk on 10/20/11.
//  Copyright (c) 2011 Wolfador. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "ReefAngel_Mobile_ClientAppDelegate.h"
#import "RA_ParamObject.h"
#import "Reachability.h"
#import "XmlParser.h"
@interface Controls : UIViewController <UIScrollViewDelegate>
{
UILabel *lastUpdatedLabel, *relay1, *relay2, *relay3, *relay4, *relay5, *relay6, *relay7, *relay8, *box2, *box3;
UIButton *b1R1Indicator, *b1R2Indicator, *b1R3Indicator, *b1R4Indicator, *b1R5Indicator, *b1R6Indicator, *b1R7Indicator, *b1R8Indicator, *b2R1Indicator, *b2R2Indicator, *b2R3Indicator, *b2R4Indicator, *b2R5Indicator, *b2R6Indicator, *b2R7Indicator, *b2R8Indicator, *changeWater, *buttonPress, *feedMode;

IBOutlet UISwitch *box1Relay1, *box1Relay2, *box1Relay3, *box1Relay4, *box1Relay5, *box1Relay6, *box1Relay7, *box1Relay8, *box2Relay1, *box2Relay2, *box2Relay3, *box2Relay4, *box2Relay5, *box2Relay6, *box2Relay7, *box2Relay8;
NSString *fullUrl;
NSString *wifiUrl, *enteredURL, *tempScale;
RA *raParam;
IBOutlet UIScrollView *scrollView;
NSString *urlLocation, *proxy;
NSString *response, *directConnect;
XmlParser *xmlParser;
NSMutableArray *paramArray;
IBOutlet UILabel *waterChangeLabel, *feedModeLabel, *buttonPressLabel;


}

@property (readwrite, copy) NSString *wifiUrl, *enteredURL, *proxy;
@property (readwrite, copy) NSString *fullUrl, *directConnect;
@property (nonatomic, retain) IBOutlet UILabel *relay1, *relay2, *relay3, *relay4, *relay5, *relay6, *relay7, *relay8, *relay21, *relay22, *relay23, *relay24, *relay25, *relay26, *relay27, *relay28;
@property (nonatomic, retain) IBOutlet UILabel *relay31;
@property (nonatomic, retain) IBOutlet UILabel *relay32;
@property (nonatomic, retain) IBOutlet UILabel *relay33;
@property (nonatomic, retain) IBOutlet UILabel *relay34;
@property (nonatomic, retain) IBOutlet UILabel *relay35;
@property (nonatomic, retain) IBOutlet UILabel *relay36;
@property (nonatomic, retain) IBOutlet UILabel *relay37;
@property (nonatomic, retain) IBOutlet UILabel *relay38;

@property (nonatomic, retain) IBOutlet UILabel *waterChangeLabel, *feedModeLabel, *buttonPressLabel;
@property (nonatomic, retain) IBOutlet UILabel *lastUpdatedLabel;
@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay1;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay2;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay3;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay4;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay5;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay6;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay7;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay8;
@property (nonatomic, retain) IBOutlet UILabel *box2;
@property (nonatomic, retain) IBOutlet UIButton *b2R1Indicator, *changeWater, *buttonPress, *feedMode;
@property (nonatomic, retain) IBOutlet UIButton *b2R2Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b2R3Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b2R4Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b2R5Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b2R6Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b2R7Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b2R8Indicator;
@property (nonatomic, retain) IBOutlet UILabel *box3;
@property (nonatomic, retain) IBOutlet UISwitch *box3Relay1;
@property (nonatomic, retain) IBOutlet UISwitch *box3Relay2;
@property (nonatomic, retain) IBOutlet UISwitch *box3Relay3;
@property (nonatomic, retain) IBOutlet UISwitch *box3Relay4;
@property (nonatomic, retain) IBOutlet UISwitch *box3Relay5;
@property (nonatomic, retain) IBOutlet UISwitch *box3Relay6;
@property (nonatomic, retain) IBOutlet UISwitch *box3Relay7;
@property (nonatomic, retain) IBOutlet UISwitch *box3Relay8;
@property (nonatomic, retain) IBOutlet UIButton *b3R1Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b3R2Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b3R3Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b3R4Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b3R5Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b3R6Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b3R7Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b3R8Indicator;
@property (nonatomic, retain) IBOutlet UISwitch *box2Relay1;
@property (nonatomic, retain) IBOutlet UISwitch *box2Relay2;
@property (nonatomic, retain) IBOutlet UISwitch *box2Relay3;
@property (nonatomic, retain) IBOutlet UISwitch *box2Relay4;
@property (nonatomic, retain) IBOutlet UISwitch *box2Relay5;
@property (nonatomic, retain) IBOutlet UISwitch *box2Relay6;
@property (nonatomic, retain) IBOutlet UISwitch *box2Relay7;
@property (nonatomic, retain) IBOutlet UISwitch *box2Relay8;
@property (nonatomic, retain) IBOutlet UIButton *b1R1Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R2Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R3Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R4Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R5Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R6Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R7Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R8Indicator;
@property (nonatomic, retain) NSString *response;
-(void) updateRelayBoxes : (RA *) ra;
-(NSString *) buildRelayBinary : (NSNumber *)relayByte;
-(void) sendUpdate:(NSString *) controllerUrl;
-(IBAction) waterChange;
-(IBAction) refreshParams;
-(IBAction) toggleRelay:(id)sender;
-(IBAction) pressButton;
-(IBAction) startFeedMode;
-(BOOL) reachable;
-(void) UpdateUI:(RA*)ra;
-(void) loadData;
-(void) sendMode:(NSString *) controllerUrl;

@end
