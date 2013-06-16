//
//  FirstViewController.h
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/17/11 updated by John on 9/29/11.
//  Copyright 2011 Wolfador. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "RA_ParamObject.h"
#import "XmlParser.h"
#import "Reachability.h"


@interface FirstViewController : UIViewController<UIApplicationDelegate, UITabBarDelegate, UIScrollViewDelegate>{

    UILabel *pHLabel, *lastUpdatedLabel, *salinityLabel, *salinityValue, *orpLabel, *orpValue, *pwmaLabel, *pwmaValue, *pwmdLabel, *pwmdValue, *wlLabel, *wlValue, *temp2Value, *temp3Value, *AIWvalue, *AIBvalue, *AIRBvalue, *AIWLabel, *AIBLabel, *AIRBLabel, *RFWhiteValue, *RFBlueValue, *RFRoyalBlueValue, *RFWhiteLabel, *RFBlueLabel, *RFRoyalBlueLabel, *RFRedValue, *RFRedLabel, *RFGreenLabel, *RFGreenValue, *RFILabel, *RFIValue, *RFSpeedLabel, *RFSpeedValue, *RFModeLabel, *RFModeValue, *RFDurationLabel, *RFDurationValue;
    NSString *fullUrl;
    NSString *wifiUrl, *enteredURL, *tempScale;
    RA *raParam;
    NSString *urlLocation, *directConnect;
    NSString *response;
    XmlParser *xmlParser;
    NSMutableArray *paramArray;
    NSString *current_version;  
    IBOutlet UILabel *temp1Label, *temp2Label, *temp3Label, *temp1Value;
    IBOutlet UIScrollView *scrollView;
    NSMutableData *receivedData;
    NSString *binaryEM;
}

@property (readwrite, copy) NSString *wifiUrl, *enteredURL, *tempScale;
@property (readwrite, copy) NSString *fullUrl, *current_version, *directConnect;
@property (nonatomic, retain) IBOutlet UILabel *temp1Label;
@property (nonatomic, retain) IBOutlet UILabel *salinityLabel, *salinityValue, *orpLabel, *orpValue;
@property (nonatomic, retain) IBOutlet UILabel *pwmaLabel;
@property (nonatomic, retain) IBOutlet UILabel *pwmdLabel;
@property (nonatomic, retain) IBOutlet UILabel *wlLabel;
@property (nonatomic, retain) IBOutlet UILabel *pwmaValue;
@property (nonatomic, retain) IBOutlet UILabel *pwmdValue;
@property (nonatomic, retain) IBOutlet UILabel *wlValue;
@property (nonatomic, retain) IBOutlet UILabel *temp2Label, *temp2Value;
@property (nonatomic, retain) IBOutlet UILabel *temp3Label, *temp3Value;
@property (nonatomic, retain) IBOutlet UILabel *pHLabel, *AIWvalue, *AIBvalue, *AIRBvalue;
@property (nonatomic, retain) IBOutlet UILabel *lastUpdatedLabel, *temp1Value, *AIWLabel, *AIBLabel, *AIRBLabel, *RFWhiteValue, *RFBlueValue, *RFRoyalBlueValue, *RFWhiteLabel, *RFBlueLabel, *RFRoyalBlueLabel, *RFRedValue, *RFRedLabel, *RFGreenLabel, *RFGreenValue, *RFSpeedLabel, *RFSpeedValue, *RFModeLabel, *RFModeValue, *RFDurationLabel, *RFDurationValue;
@property (nonatomic, retain) IBOutlet UILabel *RFILabel;
@property (nonatomic, retain) IBOutlet UILabel *RFIValue;
@property (nonatomic, retain) UIScrollView *scrollView;
@property (nonatomic, retain) NSString *response;
@property (nonatomic, retain) NSString *binaryEM;
@property (nonatomic, retain) NSMutableData *receivedData;
-(void) formatRA : (RA *) params;
-(NSString *) formatTemp : (NSNumber *) temp;
-(NSString *) formatPh : (NSNumber *) pH;
-(NSString *) formatSal : (NSNumber *)sal;
-(void) sendUpdate:(NSString *) controllerUrl;
-(IBAction) refreshParams;
-(BOOL) reachable;
-(void) UpdateUI:(RA*)ra;
-(void) loadData;
@end

