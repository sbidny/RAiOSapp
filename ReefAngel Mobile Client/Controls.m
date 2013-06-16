//
//  Controls.m
//  ReefAngel Mobile Client
//
//  Created by John Wiebalk on 10/20/11.
//  Copyright (c) 2011 Wolfador. All rights reserved.
//

#import "Controls.h"

@implementation Controls
@synthesize scrollView, relay1, relay2, relay3, relay4, relay5, relay6, relay7, relay8, relay21, relay22, relay23, relay24, relay25, relay26, relay27, relay28, relay31, relay32, relay33, relay34, relay35, relay36, relay37, relay38;
@synthesize box1Relay1, box1Relay2, box1Relay3, box1Relay4, box1Relay5, box1Relay6, box1Relay7, box1Relay8;
@synthesize b1R1Indicator, b1R2Indicator, b1R3Indicator, b1R4Indicator, b1R5Indicator, b1R6Indicator, b1R7Indicator, b1R8Indicator;

@synthesize b2R1Indicator, b2R2Indicator, b2R3Indicator, b2R4Indicator, b2R5Indicator, b2R6Indicator, b2R7Indicator, b2R8Indicator;
@synthesize box2Relay1, box2Relay2, box2Relay3, box2Relay4, box2Relay5, box2Relay6, box2Relay7, box2Relay8;

@synthesize b3R1Indicator, b3R2Indicator, b3R3Indicator, b3R4Indicator, b3R5Indicator, b3R6Indicator, b3R7Indicator, b3R8Indicator;
@synthesize box3Relay1, box3Relay2, box3Relay3, box3Relay4, box3Relay5, box3Relay6, box3Relay7, box3Relay8;

@synthesize wifiUrl,fullUrl,lastUpdatedLabel, directConnect, proxy;
@synthesize box2, box3, enteredURL, response, changeWater, buttonPress, waterChangeLabel, feedMode, feedModeLabel, buttonPressLabel;


- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    [self.scrollView setScrollEnabled:YES];
    [self.scrollView setContentSize:CGSizeMake(320, 570)];     
    self.scrollView.delegate = self;
    
}

-(BOOL)reachable
{
    NSString *http = @"http://";
    NSRange range = [self.enteredURL rangeOfString : http];
    if (range.location == NSNotFound) {
        
        NSString *testURL = [NSString stringWithString:self.enteredURL];
        Reachability *r = [Reachability reachabilityWithHostName:testURL];
        NetworkStatus internetStatus = [r currentReachabilityStatus];
        if(internetStatus == NotReachable) {
            return NO;
        }
        else
        {
            return YES;
        }
    }
    else
    {
        NSString *testURL = [self.enteredURL substringFromIndex:7];
        Reachability *r = [Reachability reachabilityWithHostName:testURL];
        NetworkStatus internetStatus = [r currentReachabilityStatus];
        if(internetStatus == NotReachable) {
            return NO;
        }
        else
        {
            return YES;
        }
    }
}

-(void)UpdateUI:(RA*)ra
{
    
    if(raParam)
    {
        
        if(!raParam.isRelay1OFFMask && !raParam.isRelay1ONMask)
        {box1Relay1.on = raParam.isRelay1Active;b1R1Indicator.hidden = YES;}
        else
        {box1Relay1.on = raParam.isRelay1ONMask;b1R1Indicator.hidden = NO;}
        if(!raParam.isRelay2OFFMask && !raParam.isRelay2ONMask)
        {box1Relay2.on = raParam.isRelay2Active;b1R2Indicator.hidden = YES;}
        else
        {box1Relay2.on = raParam.isRelay2ONMask;b1R2Indicator.hidden= NO;}
        if(!raParam.isRelay3OFFMask && !raParam.isRelay3ONMask)
        {box1Relay3.on = raParam.isRelay3Active;b1R3Indicator.hidden = YES;}
        else
        {box1Relay3.on = raParam.isRelay3ONMask;b1R3Indicator.hidden = NO;}
        if(!raParam.isRelay4OFFMask && !raParam.isRelay4ONMask)
        {box1Relay4.on = raParam.isRelay4Active;b1R4Indicator.hidden = YES;}
        else
        {box1Relay4.on = raParam.isRelay4ONMask;b1R4Indicator.hidden = NO;}
        if(!raParam.isRelay5OFFMask && !raParam.isRelay5ONMask)
        {box1Relay5.on = raParam.isRelay5Active;b1R5Indicator.hidden = YES;}
        else
        {box1Relay5.on = raParam.isRelay5ONMask;b1R5Indicator.hidden = NO;}
        if(!raParam.isRelay6OFFMask && !raParam.isRelay6ONMask)
        {box1Relay6.on = raParam.isRelay6Active;b1R6Indicator.hidden = YES;}
        else
        {box1Relay6.on = raParam.isRelay6ONMask;b1R6Indicator.hidden = NO;}
        if(!raParam.isRelay7OFFMask && !raParam.isRelay7ONMask)
        {box1Relay7.on = raParam.isRelay7Active;b1R7Indicator.hidden = YES;}
        else
        {box1Relay7.on = raParam.isRelay7ONMask;b1R7Indicator.hidden = NO;}
        if(!raParam.isRelay8OFFMask && !raParam.isRelay8ONMask)
        {box1Relay8.on = raParam.isRelay8Active;b1R8Indicator.hidden = YES;}
        else
        {box1Relay8.on = raParam.isRelay8ONMask;b1R8Indicator.hidden = NO;}
        
        if(self.box2.hidden == NO)
        {
            if(!raParam.isRelay01OFFMask && !raParam.isRelay01ONMask)
            {box2Relay1.on = raParam.isRelay01Active;b2R1Indicator.hidden = YES;}
            else
            {box2Relay1.on = raParam.isRelay01ONMask;b2R1Indicator.hidden = NO;}
            if(!raParam.isRelay02OFFMask && !raParam.isRelay02ONMask)
            {box2Relay2.on = raParam.isRelay02Active;b2R2Indicator.hidden = YES;}
            else
            {box2Relay2.on = raParam.isRelay02ONMask;b2R2Indicator.hidden= NO;}
            if(!raParam.isRelay03OFFMask && !raParam.isRelay03ONMask)
            {box2Relay3.on = raParam.isRelay03Active;b2R3Indicator.hidden = YES;}
            else
            {box2Relay3.on = raParam.isRelay03ONMask;b2R3Indicator.hidden = NO;}
            if(!raParam.isRelay04OFFMask && !raParam.isRelay04ONMask)
            {box2Relay4.on = raParam.isRelay04Active;b2R4Indicator.hidden = YES;}
            else
            {box2Relay4.on = raParam.isRelay04ONMask;b2R4Indicator.hidden = NO;}
            if(!raParam.isRelay05OFFMask && !raParam.isRelay05ONMask)
            {box2Relay5.on = raParam.isRelay05Active;b2R5Indicator.hidden = YES;}
            else
            {box2Relay5.on = raParam.isRelay05ONMask;b2R5Indicator.hidden = NO;}
            if(!raParam.isRelay06OFFMask && !raParam.isRelay06ONMask)
            {box2Relay6.on = raParam.isRelay06Active;b2R6Indicator.hidden = YES;}
            else
            {box2Relay6.on = raParam.isRelay06ONMask;b2R6Indicator.hidden = NO;}
            if(!raParam.isRelay07OFFMask && !raParam.isRelay07ONMask)
            {box2Relay7.on = raParam.isRelay07Active;b2R7Indicator.hidden = YES;}
            else
            {box2Relay7.on = raParam.isRelay07ONMask;b2R7Indicator.hidden = NO;}
            if(!raParam.isRelay08OFFMask && !raParam.isRelay08ONMask)
            {box2Relay8.on = raParam.isRelay08Active;b2R8Indicator.hidden = YES;}
            else
            {box2Relay8.on = raParam.isRelay08ONMask;b2R8Indicator.hidden = NO;}
        } else {
            self.relay21.hidden = YES;
            self.relay22.hidden = YES;
            self.relay23.hidden = YES;
            self.relay24.hidden = YES;
            self.relay25.hidden = YES;
            self.relay26.hidden = YES;
            self.relay27.hidden = YES;
            self.relay28.hidden = YES;
            self.box2Relay1.hidden = YES;
            self.box2Relay2.hidden = YES;
            self.box2Relay3.hidden = YES;
            self.box2Relay4.hidden = YES;
            self.box2Relay5.hidden = YES;
            self.box2Relay6.hidden = YES;
            self.box2Relay7.hidden = YES;
            self.box2Relay8.hidden = YES;
        }
        
        if(self.box3.hidden == NO)
        {
            if(!raParam.isRelay11OFFMask && !raParam.isRelay11ONMask)
            {box3Relay1.on = raParam.isRelay11Active;b3R1Indicator.hidden = YES;}
            else
            {box3Relay1.on = raParam.isRelay11ONMask;b3R1Indicator.hidden = NO;}
            
            if(!raParam.isRelay12OFFMask && !raParam.isRelay12ONMask)
            {box3Relay2.on = raParam.isRelay12Active;b3R2Indicator.hidden = YES;}
            else
            {box3Relay2.on = raParam.isRelay12ONMask;b3R2Indicator.hidden= NO;}
            
            if(!raParam.isRelay13OFFMask && !raParam.isRelay13ONMask)
            {box3Relay3.on = raParam.isRelay13Active;b3R3Indicator.hidden = YES;}
            else
            {box3Relay3.on = raParam.isRelay13ONMask;b3R3Indicator.hidden = NO;}
            
            if(!raParam.isRelay14OFFMask && !raParam.isRelay14ONMask)
            {box3Relay4.on = raParam.isRelay14Active;b3R4Indicator.hidden = YES;}
            else
            {box3Relay4.on = raParam.isRelay14ONMask;b3R4Indicator.hidden = NO;}
            
            if(!raParam.isRelay15OFFMask && !raParam.isRelay15ONMask)
            {box3Relay5.on = raParam.isRelay15Active;b3R5Indicator.hidden = YES;}
            else
            {box3Relay5.on = raParam.isRelay15ONMask;b3R5Indicator.hidden = NO;}
            
            if(!raParam.isRelay16OFFMask && !raParam.isRelay16ONMask)
            {box3Relay6.on = raParam.isRelay16Active;b3R6Indicator.hidden = YES;}
            else
            {box3Relay6.on = raParam.isRelay16ONMask;b3R6Indicator.hidden = NO;}
            
            if(!raParam.isRelay17OFFMask && !raParam.isRelay17ONMask)
            {box3Relay7.on = raParam.isRelay17Active;b3R7Indicator.hidden = YES;}
            else
            {box3Relay7.on = raParam.isRelay17ONMask;b3R7Indicator.hidden = NO;}
            
            if(!raParam.isRelay18OFFMask && !raParam.isRelay18ONMask)
            {box3Relay8.on = raParam.isRelay18Active;b3R8Indicator.hidden = YES;}
            else
            {box3Relay8.on = raParam.isRelay18ONMask;b3R8Indicator.hidden = NO;}
        } else {
            self.relay31.hidden = YES;
            self.relay32.hidden = YES;
            self.relay33.hidden = YES;
            self.relay34.hidden = YES;
            self.relay35.hidden = YES;
            self.relay36.hidden = YES;
            self.relay37.hidden = YES;
            self.relay38.hidden = YES;
            self.box3Relay1.hidden = YES;
            self.box3Relay2.hidden = YES;
            self.box3Relay3.hidden = YES;
            self.box3Relay4.hidden = YES;
            self.box3Relay5.hidden = YES;
            self.box3Relay6.hidden = YES;
            self.box3Relay7.hidden = YES;
            self.box3Relay8.hidden = YES;
        }
        
        raParam = nil;
        [raParam release];
    }
    
}

-(IBAction)refreshParams
{
    if ([self reachable]) {
        if([self.directConnect isEqualToString:@"ON"])
        {
            self.fullUrl = [NSString stringWithFormat:@"%@r99",self.wifiUrl];
        }
        else
        {
            self.fullUrl = [NSString stringWithFormat:@"%@r99",self.proxy];
        }

        
        [self sendUpdate:self.fullUrl];
    }
    else
    {
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Unable to connect" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
		[alertView show];
		[alertView release];
    }
    
}

-(IBAction)waterChange
{
    if ([self reachable]) {
        if([self.directConnect isEqualToString:@"ON"])
        {
            self.fullUrl = [NSString stringWithFormat:@"%@mw",self.wifiUrl];
        }
        else
        {
            self.fullUrl = [NSString stringWithFormat:@"%@mw",self.proxy];
        }

        [self sendMode:self.fullUrl];
        [self refreshParams];
    }
    else
    {
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Unable to connect" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
		[alertView show];
		[alertView release];
    }
    
}

-(IBAction)startFeedMode
{
    if ([self reachable]) {
        if([self.directConnect isEqualToString:@"ON"])
        {
            self.fullUrl = [NSString stringWithFormat:@"%@mf",self.wifiUrl];
        }
        else
        {
           self.fullUrl = [NSString stringWithFormat:@"%@mf",self.proxy];
        }
        
        [self sendMode:self.fullUrl];
        [self refreshParams];
    }
    else
    {
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Unable to connect" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
		[alertView show];
		[alertView release];
    }
}

-(IBAction)pressButton
{
    if([self.directConnect isEqualToString:@"ON"])
    {
        self.fullUrl = [NSString stringWithFormat:@"%@bp",self.wifiUrl];
    }
    else
    {
        self.fullUrl = [NSString stringWithFormat:@"%@bp",self.proxy];
    }
    
    [self sendMode:self.fullUrl];
    [self refreshParams];
}

-(IBAction) toggleRelay:(UISwitch*)sender
{
    if([sender class] == [UISwitch class])
    {
        UISwitch *swit = (UISwitch*)sender;        
        self.fullUrl = [NSString stringWithFormat:@"%@r%@%@",self.wifiUrl,[NSString stringWithFormat:@"%d",swit.tag],
                        swit.on ? @"1" : @"0"];
        
    }
    else //if([sender class] == [UIButton class])
    {
        
        UIButton *but = (UIButton*)sender;
        NSString *tag = [NSString stringWithFormat:@"%d",but.tag];    
        self.fullUrl = [NSString stringWithFormat:@"%@r%@%@",self.wifiUrl,tag,@"2"];
        
    }    
    if ([self reachable]) {
        [self sendUpdate:fullUrl];
    }
    else {
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Unable to connect" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
		[alertView show];
		[alertView release];
    }
    
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        
        return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
    }
    else
    {
        return (interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown);
	}
}

-(void) loadData
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *path = [documentsDirectory stringByAppendingPathComponent:@"savedata.plist"];
	
	NSDictionary  *restored = [NSDictionary dictionaryWithContentsOfFile: path];
    
    self.directConnect = [restored objectForKey:@"DirectConnect"];
    self.wifiUrl = [restored objectForKey:@"URL"];
    self.enteredURL = [restored objectForKey:@"EnteredURL"];
    if(![self.directConnect isEqualToString:@"ON"])
    {
        NSString *http = @"http://";
        NSRange range = [self.wifiUrl rangeOfString : http];
        if (range.location != NSNotFound) {
            NSString *testURL = [self.wifiUrl substringFromIndex:7];
            //self.proxy = [@"http://forum.reefangel.com/status/proxy.aspx?u=" stringByAppendingString:testURL];
             self.proxy = [@"http://" stringByAppendingString:testURL];
        }
        else
        {
            //self.proxy = [@"http://forum.reefangel.com/status/proxy.aspx?u=" stringByAppendingString:self.wifiUrl];
            self.proxy = [@"http://" stringByAppendingString:self.wifiUrl];
        }
        
    }

    self.relay1.text = [restored objectForKey:@"Relay1"];
    self.relay2.text = [restored objectForKey:@"Relay2"];
    self.relay3.text = [restored objectForKey:@"Relay3"];
    self.relay4.text = [restored objectForKey:@"Relay4"];
    self.relay5.text = [restored objectForKey:@"Relay5"];
    self.relay6.text = [restored objectForKey:@"Relay6"];
    self.relay7.text = [restored objectForKey:@"Relay7"];
    self.relay8.text = [restored objectForKey:@"Relay8"];
    
    if([[restored objectForKey:@"ExpansionON"] isEqualToString: @"ON"])
    {
        [self.scrollView setContentSize:CGSizeMake(320, 1200)];
        self.box2.hidden = NO;
        self.relay21.hidden = NO;
        self.relay22.hidden = NO;
        self.relay23.hidden = NO;
        self.relay24.hidden = NO;
        self.relay25.hidden = NO;
        self.relay26.hidden = NO;
        self.relay27.hidden = NO;
        self.relay28.hidden = NO;
        
        self.relay21.text = [restored objectForKey:@"ExpRelay1"];
        self.relay22.text = [restored objectForKey:@"ExpRelay2"];
        self.relay23.text = [restored objectForKey:@"ExpRelay3"];
        self.relay24.text = [restored objectForKey:@"ExpRelay4"];
        self.relay25.text = [restored objectForKey:@"ExpRelay5"];
        self.relay26.text = [restored objectForKey:@"ExpRelay6"];
        self.relay27.text = [restored objectForKey:@"ExpRelay7"];
        self.relay28.text = [restored objectForKey:@"ExpRelay8"];
        
        self.box3.hidden = NO;
        self.relay31.hidden = NO;
        self.relay32.hidden = NO;
        self.relay33.hidden = NO;
        self.relay34.hidden = NO;
        self.relay35.hidden = NO;
        self.relay36.hidden = NO;
        self.relay37.hidden = NO;
        self.relay38.hidden = NO;

        self.relay31.text = [restored objectForKey:@"Exp2Relay1"];
        self.relay32.text = [restored objectForKey:@"Exp2Relay2"];
        self.relay33.text = [restored objectForKey:@"Exp2Relay3"];
        self.relay34.text = [restored objectForKey:@"Exp2Relay4"];
        self.relay35.text = [restored objectForKey:@"Exp2Relay5"];
        self.relay36.text = [restored objectForKey:@"Exp2Relay6"];
        self.relay37.text = [restored objectForKey:@"Exp2Relay7"];
        self.relay38.text = [restored objectForKey:@"Exp2Relay8"];
        
        self.box2Relay1.hidden = NO;
        self.box2Relay2.hidden = NO;
        self.box2Relay3.hidden = NO;
        self.box2Relay4.hidden = NO;
        self.box2Relay5.hidden = NO;
        self.box2Relay6.hidden = NO;
        self.box2Relay7.hidden = NO;
        self.box2Relay8.hidden = NO;
    
        self.box3Relay1.hidden = NO;
        self.box3Relay2.hidden = NO;
        self.box3Relay3.hidden = NO;
        self.box3Relay4.hidden = NO;
        self.box3Relay5.hidden = NO;
        self.box3Relay6.hidden = NO;
        self.box3Relay7.hidden = NO;
        self.box3Relay8.hidden = NO;
    }
    else
    {
        [self.scrollView setContentSize:CGSizeMake(320, 570)]; 
        self.box2.hidden = YES;
        self.relay21.hidden = YES;
        self.relay22.hidden = YES;
        self.relay23.hidden = YES;
        self.relay24.hidden = YES;
        self.relay25.hidden = YES;
        self.relay26.hidden = YES;
        self.relay27.hidden = YES;
        self.relay28.hidden = YES;
        self.box2Relay1.hidden = YES;
        self.box2Relay2.hidden = YES;
        self.box2Relay3.hidden = YES;
        self.box2Relay4.hidden = YES;
        self.box2Relay5.hidden = YES;
        self.box2Relay6.hidden = YES;
        self.box2Relay7.hidden = YES;
        self.box2Relay8.hidden = YES;
        self.b2R1Indicator.hidden = YES;
        self.b2R2Indicator.hidden = YES;
        self.b2R3Indicator.hidden = YES;
        self.b2R4Indicator.hidden = YES;
        self.b2R5Indicator.hidden = YES;
        self.b2R6Indicator.hidden = YES;
        self.b2R7Indicator.hidden = YES;
        self.b2R8Indicator.hidden = YES;
    
        self.box3.hidden = YES;
        self.relay31.hidden = YES;
        self.relay32.hidden = YES;
        self.relay33.hidden = YES;
        self.relay34.hidden = YES;
        self.relay35.hidden = YES;
        self.relay36.hidden = YES;
        self.relay37.hidden = YES;
        self.relay38.hidden = YES;
        self.box3Relay1.hidden = YES;
        self.box3Relay2.hidden = YES;
        self.box3Relay3.hidden = YES;
        self.box3Relay4.hidden = YES;
        self.box3Relay5.hidden = YES;
        self.box3Relay6.hidden = YES;
        self.box3Relay7.hidden = YES;
        self.box3Relay8.hidden = YES;
        self.b3R1Indicator.hidden = YES;
        self.b3R2Indicator.hidden = YES;
        self.b3R3Indicator.hidden = YES;
        self.b3R4Indicator.hidden = YES;
        self.b3R5Indicator.hidden = YES;
        self.b3R6Indicator.hidden = YES;
        self.b3R7Indicator.hidden = YES;
        self.b3R8Indicator.hidden = YES;
    }
    
    if ([self reachable]) {
        if([self.directConnect isEqualToString:@"ON"])
        {
        self.fullUrl = [NSString stringWithFormat:@"%@r99",self.wifiUrl];
        [self sendUpdate:self.fullUrl];
        }
        else
        {
            self.fullUrl = [NSString stringWithFormat:@"%@r99",self.proxy];
            [self sendUpdate:self.fullUrl];
        }
        
    }
    else if ([self.enteredURL length] == 0 && ![self.directConnect isEqualToString:@"ON"])
    {
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Settings" message:@"Enter RA URL in settings." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
		[alertView show];
		[alertView release];
    }
    else {
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Unable to connect" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
		[alertView show];
		[alertView release];
    }
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self loadData];
}

-(void)sendUpdate:(NSString *) controllerUrl
{
    
    NSURL *url = [NSURL URLWithString: controllerUrl];
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:url                        
                                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                              
                                          timeoutInterval:60.0];
    
    
    NSURLConnection *theConnection = [NSURLConnection connectionWithRequest:theRequest delegate:self];
    if (!theConnection) {
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Unable to connect" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
		[alertView show];
		[alertView release];
        
    }
    self.lastUpdatedLabel.text = @"Updating";
    self.lastUpdatedLabel.textColor = [UIColor greenColor];
    
}

-(void)sendMode:(NSString *) controllerUrl
{
    
    NSURL *url = [NSURL URLWithString: controllerUrl];
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:url                        
                                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                              
                                          timeoutInterval:60.0];
    
    NSURLConnection *theConnection = [NSURLConnection connectionWithRequest:theRequest delegate:self];
    
    if (!theConnection) {
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Unable to connect" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
		[alertView show];
		[alertView release];
        
    }
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    xmlParser = [[XmlParser alloc] init] ;
    NSString *receivedData = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    self.response = [NSString stringWithString:receivedData];
    [receivedData release];

    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *path = [documentsDirectory stringByAppendingPathComponent:@"savedata.plist"];
    NSDictionary  *restored = [NSDictionary dictionaryWithContentsOfFile: path];
    
    NSRange range = [self.response rangeOfString:@"<MODE>" options:NSCaseInsensitiveSearch];
    if( range.location != NSNotFound ) {
        
        if (![self.response isEqualToString:@"<MODE>OK</MODE>"]) {
            
            UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Unable to start" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
            [alertView show];
            [alertView release];
        }
        
        //refresh Params / relays to reflect mode start
        [self sendUpdate:self.fullUrl];
    }
        else
    {
        raParam = [[RA alloc] init] ;
        
        paramArray = [xmlParser fromXml:self.response withObject:raParam];
        
        raParam = [paramArray lastObject];
    
        if([[restored objectForKey:@"ExpansionON"] isEqualToString: @"ON"]) {
                
            if([raParam.REM intValue] == 0) {
                [self.scrollView setContentSize:CGSizeMake(320, 570)];
                self.box2.hidden = YES;
                self.box3.hidden = YES;
            } else if ([raParam.REM intValue] == 1) {
                [self.scrollView setContentSize:CGSizeMake(320, 900)];
                self.box2.hidden = NO;
                self.box3.hidden = YES;
            } else {
                [self.scrollView setContentSize:CGSizeMake(320, 1200)];
                self.box2.hidden = NO;
                self.box3.hidden = NO;
            }

        }
        [self updateRelayBoxes:raParam];
        [self UpdateUI:raParam];
        if (self.response != NULL) {
           
            NSDateFormatter *formatter = [[[NSDateFormatter alloc]init]autorelease];
            [formatter setDateFormat:@"MMM dd yyyy : hh:mm:ss a"];
            NSDate *date = [NSDate date];
            self.lastUpdatedLabel.text = [formatter stringFromDate:date];
            self.lastUpdatedLabel.textColor = [UIColor greenColor];
        }
        else
        {
            if (self.lastUpdatedLabel.text.length == 0) {
                self.lastUpdatedLabel.text = @"Please Refresh";
            }
            self.lastUpdatedLabel.textColor = [UIColor redColor];
            
        }
        [self UpdateUI:raParam];
        
        [raParam release];
        
    }
    [xmlParser release];
    
}


-(NSString *) formatTemp : (NSNumber *)temp
{   
    NSString *tempString = [temp stringValue];
    NSString *retString;
    if([tempString length] >= 3)
    {
        retString = [[[tempString substringToIndex:[tempString length]-1] stringByAppendingString:@"."] stringByAppendingString:[tempString substringFromIndex:[tempString length]-1]];          
    }
    else
    {
        retString = [tempString stringByAppendingString:@".0"];
    }
    
    
    return retString;
    
    
}

-(void)updateRelayBoxes : (RA *) ra
{

    NSString *binaryString = [self buildRelayBinary:ra.R];
    NSString *binaryONMask = [self buildRelayBinary:ra.RON];
    NSString *binaryOFFMask = [self buildRelayBinary:ra.ROFF];
    
    ra.isRelay1Active = [[binaryString substringWithRange:NSMakeRange(0,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay2Active = [[binaryString substringWithRange:NSMakeRange(1,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay3Active = [[binaryString substringWithRange:NSMakeRange(2,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay4Active = [[binaryString substringWithRange:NSMakeRange(3,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay5Active = [[binaryString substringWithRange:NSMakeRange(4,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay6Active = [[binaryString substringWithRange:NSMakeRange(5,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay7Active = [[binaryString substringWithRange:NSMakeRange(6,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay8Active = [[binaryString substringWithRange:NSMakeRange(7,1)] isEqualToString:@"1"] ? YES : NO;
    
    ra.isRelay1ONMask = [[binaryONMask substringWithRange:NSMakeRange(0,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay2ONMask = [[binaryONMask substringWithRange:NSMakeRange(1,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay3ONMask = [[binaryONMask substringWithRange:NSMakeRange(2,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay4ONMask = [[binaryONMask substringWithRange:NSMakeRange(3,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay5ONMask = [[binaryONMask substringWithRange:NSMakeRange(4,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay6ONMask = [[binaryONMask substringWithRange:NSMakeRange(5,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay7ONMask = [[binaryONMask substringWithRange:NSMakeRange(6,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay8ONMask = [[binaryONMask substringWithRange:NSMakeRange(7,1)] isEqualToString:@"0"] ? NO : YES;
    
    ra.isRelay1OFFMask = [[binaryOFFMask substringWithRange:NSMakeRange(0,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay2OFFMask = [[binaryOFFMask substringWithRange:NSMakeRange(1,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay3OFFMask = [[binaryOFFMask substringWithRange:NSMakeRange(2,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay4OFFMask = [[binaryOFFMask substringWithRange:NSMakeRange(3,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay5OFFMask = [[binaryOFFMask substringWithRange:NSMakeRange(4,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay6OFFMask = [[binaryOFFMask substringWithRange:NSMakeRange(5,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay7OFFMask = [[binaryOFFMask substringWithRange:NSMakeRange(6,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay8OFFMask = [[binaryOFFMask substringWithRange:NSMakeRange(7,1)] isEqualToString:@"0"] ? YES : NO;  
    
    
    //2nd Relay Box
    
    NSString *binary0String = [self buildRelayBinary:ra.R1];
    NSString *binary0ONMask = [self buildRelayBinary:ra.RON1];
    NSString *binary0OFFMask = [self buildRelayBinary:ra.ROFF1];
    ra.isRelay01Active = [[binary0String substringWithRange:NSMakeRange(0,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay02Active = [[binary0String substringWithRange:NSMakeRange(1,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay03Active = [[binary0String substringWithRange:NSMakeRange(2,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay04Active = [[binary0String substringWithRange:NSMakeRange(3,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay05Active = [[binary0String substringWithRange:NSMakeRange(4,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay06Active = [[binary0String substringWithRange:NSMakeRange(5,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay07Active = [[binary0String substringWithRange:NSMakeRange(6,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay08Active = [[binary0String substringWithRange:NSMakeRange(7,1)] isEqualToString:@"1"] ? YES : NO;
    
    ra.isRelay01ONMask = [[binary0ONMask substringWithRange:NSMakeRange(0,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay02ONMask = [[binary0ONMask substringWithRange:NSMakeRange(1,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay03ONMask = [[binary0ONMask substringWithRange:NSMakeRange(2,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay04ONMask = [[binary0ONMask substringWithRange:NSMakeRange(3,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay05ONMask = [[binary0ONMask substringWithRange:NSMakeRange(4,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay06ONMask = [[binary0ONMask substringWithRange:NSMakeRange(5,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay07ONMask = [[binary0ONMask substringWithRange:NSMakeRange(6,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay08ONMask = [[binary0ONMask substringWithRange:NSMakeRange(7,1)] isEqualToString:@"0"] ? NO : YES;
    
    ra.isRelay01OFFMask = [[binary0OFFMask substringWithRange:NSMakeRange(0,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay02OFFMask = [[binary0OFFMask substringWithRange:NSMakeRange(1,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay03OFFMask = [[binary0OFFMask substringWithRange:NSMakeRange(2,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay04OFFMask = [[binary0OFFMask substringWithRange:NSMakeRange(3,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay05OFFMask = [[binary0OFFMask substringWithRange:NSMakeRange(4,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay06OFFMask = [[binary0OFFMask substringWithRange:NSMakeRange(5,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay07OFFMask = [[binary0OFFMask substringWithRange:NSMakeRange(6,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay08OFFMask = [[binary0OFFMask substringWithRange:NSMakeRange(7,1)] isEqualToString:@"0"] ? YES : NO;    
    
    //3rd Relay Box
    
    NSString *binary1String = [self buildRelayBinary:ra.R2];
    NSString *binary1ONMask = [self buildRelayBinary:ra.RON2];
    NSString *binary1OFFMask = [self buildRelayBinary:ra.ROFF2];
    ra.isRelay11Active = [[binary1String substringWithRange:NSMakeRange(0,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay12Active = [[binary1String substringWithRange:NSMakeRange(1,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay13Active = [[binary1String substringWithRange:NSMakeRange(2,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay14Active = [[binary1String substringWithRange:NSMakeRange(3,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay15Active = [[binary1String substringWithRange:NSMakeRange(4,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay16Active = [[binary1String substringWithRange:NSMakeRange(5,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay17Active = [[binary1String substringWithRange:NSMakeRange(6,1)] isEqualToString:@"1"] ? YES : NO;
    ra.isRelay18Active = [[binary1String substringWithRange:NSMakeRange(7,1)] isEqualToString:@"1"] ? YES : NO;
    
    ra.isRelay11ONMask = [[binary1ONMask substringWithRange:NSMakeRange(0,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay12ONMask = [[binary1ONMask substringWithRange:NSMakeRange(1,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay13ONMask = [[binary1ONMask substringWithRange:NSMakeRange(2,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay14ONMask = [[binary1ONMask substringWithRange:NSMakeRange(3,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay15ONMask = [[binary1ONMask substringWithRange:NSMakeRange(4,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay16ONMask = [[binary1ONMask substringWithRange:NSMakeRange(5,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay17ONMask = [[binary1ONMask substringWithRange:NSMakeRange(6,1)] isEqualToString:@"0"] ? NO : YES;
    ra.isRelay18ONMask = [[binary1ONMask substringWithRange:NSMakeRange(7,1)] isEqualToString:@"0"] ? NO : YES;
    
    ra.isRelay11OFFMask = [[binary1OFFMask substringWithRange:NSMakeRange(0,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay12OFFMask = [[binary1OFFMask substringWithRange:NSMakeRange(1,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay13OFFMask = [[binary1OFFMask substringWithRange:NSMakeRange(2,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay14OFFMask = [[binary1OFFMask substringWithRange:NSMakeRange(3,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay15OFFMask = [[binary1OFFMask substringWithRange:NSMakeRange(4,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay16OFFMask = [[binary1OFFMask substringWithRange:NSMakeRange(5,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay17OFFMask = [[binary1OFFMask substringWithRange:NSMakeRange(6,1)] isEqualToString:@"0"] ? YES : NO;
    ra.isRelay18OFFMask = [[binary1OFFMask substringWithRange:NSMakeRange(7,1)] isEqualToString:@"0"] ? YES : NO;
    
}

-(NSString *)buildRelayBinary : (NSNumber *)relayByte
{
    NSMutableString *str = [NSMutableString string];
    int numCopy = [relayByte intValue];
    for(NSInteger i = 0; i<8; i++)
    {
        [str insertString:((numCopy & 1) ? @"1" : @"0") atIndex:i];
        numCopy >>=1;
    }
    return str;
    
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    self.relay1 = nil;
    self.relay2 = nil;
    self.relay3 = nil;
    self.relay4 = nil;
    self.relay5 = nil;
    self.relay6 = nil;
    self.relay7 = nil;
    self.relay8 = nil;
    self.relay21 = nil;
    self.relay22 = nil;
    self.relay23 = nil;
    self.relay24 = nil;
    self.relay25 = nil;
    self.relay26 = nil;
    self.relay27 = nil;
    self.relay28 = nil;
    self.relay31 = nil;
    self.relay32 = nil;
    self.relay33 = nil;
    self.relay34 = nil;
    self.relay35 = nil;
    self.relay36 = nil;
    self.relay37 = nil;
    self.relay38 = nil;
    self.lastUpdatedLabel = nil;

}

- (void)viewDidUnload
{
    
    self.relay1 = nil;
    self.relay2 = nil;
    self.relay3 = nil;
    self.relay4 = nil;
    self.relay5 = nil;
    self.relay6 = nil;
    self.relay7 = nil;
    self.relay8 = nil;
    self.relay21 = nil;
    self.relay22 = nil;
    self.relay23 = nil;
    self.relay24 = nil;
    self.relay25 = nil;
    self.relay26 = nil;
    self.relay27 = nil;
    self.relay28 = nil;
    self.relay31 = nil;
    self.relay32 = nil;
    self.relay33 = nil;
    self.relay34 = nil;
    self.relay35 = nil;
    self.relay36 = nil;
    self.relay37 = nil;
    self.relay38 = nil;
    self.lastUpdatedLabel = nil;
    self.scrollView = nil;
    self.box1Relay1 = nil;
    self.box1Relay2 = nil;
    self.box1Relay3 = nil;
    self.box1Relay4 = nil;
    self.box1Relay5 = nil;
    self.box1Relay6 = nil;
    self.box1Relay7 = nil;
    self.box1Relay8 = nil;
    self.box2 = nil;
    self.b2R1Indicator = nil;
    self.b2R2Indicator = nil;
    self.b2R3Indicator = nil;
    self.b2R4Indicator = nil;
    self.b2R5Indicator = nil;
    self.b2R6Indicator = nil;
    self.b2R7Indicator = nil;
    self.b2R8Indicator = nil;
    self.box3 = nil;
    self.b3R1Indicator = nil;
    self.b3R2Indicator = nil;
    self.b3R3Indicator = nil;
    self.b3R4Indicator = nil;
    self.b3R5Indicator = nil;
    self.b3R6Indicator = nil;
    self.b3R7Indicator = nil;
    self.b3R8Indicator = nil;
    self.box2Relay1 = nil;
    self.box2Relay2 = nil;
    self.box2Relay3 = nil;
    self.box2Relay4 = nil;
    self.box2Relay5 = nil;
    self.box2Relay6 = nil;
    self.box2Relay7 = nil;
    self.box2Relay8 = nil;
    self.box3Relay1 = nil;
    self.box3Relay2 = nil;
    self.box3Relay3 = nil;
    self.box3Relay4 = nil;
    self.box3Relay5 = nil;
    self.box3Relay6 = nil;
    self.box3Relay7 = nil;
    self.box3Relay8 = nil;
    self.b1R1Indicator = nil;
    self.b1R2Indicator = nil;
    self.b1R3Indicator = nil;
    self.b1R4Indicator = nil;
    self.b1R5Indicator = nil;
    self.b1R6Indicator = nil;
    self.b1R7Indicator = nil;
    self.b1R8Indicator = nil;
    self.response = nil;
    self.changeWater = nil;
    self.waterChangeLabel = nil;
    self.buttonPress = nil;
    self.buttonPressLabel = nil;
    self.feedMode = nil;
    self.feedModeLabel = nil;
    self.directConnect = nil;
    [super viewDidUnload];
}

- (void)dealloc
{
    [relay1 release];
    [relay2 release];
    [relay3 release];
    [relay4 release];
    [relay5 release];
    [relay6 release];
    [relay7 release];
    [relay8 release];
    [relay21 release];
    [relay22 release];
    [relay23 release];
    [relay24 release];
    [relay25 release];
    [relay26 release];
    [relay27 release];
    [relay28 release];
    [lastUpdatedLabel release];
    [scrollView release];
    [box1Relay1 release];
    [box1Relay2 release];
    [box1Relay3 release];
    [box1Relay4 release];
    [box1Relay5 release];
    [box1Relay6 release];
    [box1Relay7 release];
    [box1Relay8 release];
    [box2 release];
    [b2R1Indicator release];
    [b2R2Indicator release];
    [b2R3Indicator release];
    [b2R4Indicator release];
    [b2R5Indicator release];
    [b2R6Indicator release];
    [b2R7Indicator release];
    [b2R8Indicator release];
    [box3 release];
    [relay31 release];
    [relay32 release];
    [relay33 release];
    [relay34 release];
    [relay35 release];
    [relay36 release];
    [relay37 release];
    [relay38 release];
    [b3R1Indicator release];
    [b3R2Indicator release];
    [b3R3Indicator release];
    [b3R4Indicator release];
    [b3R5Indicator release];
    [b3R6Indicator release];
    [b3R7Indicator release];
    [b3R8Indicator release];
    [box2Relay1 release];
    [box2Relay2 release];
    [box2Relay3 release];
    [box2Relay4 release];
    [box2Relay5 release];
    [box2Relay6 release];
    [box2Relay7 release];
    [box2Relay8 release];
    [box3Relay1 release];
    [box3Relay2 release];
    [box3Relay3 release];
    [box3Relay4 release];
    [box3Relay5 release];
    [box3Relay6 release];
    [box3Relay7 release];
    [box3Relay8 release];
    [b1R1Indicator release];
    [b1R2Indicator release];
    [b1R3Indicator release];
    [b1R4Indicator release];
    [b1R5Indicator release];
    [b1R6Indicator release];
    [b1R7Indicator release];
    [b1R8Indicator release];
    [response release];
    [tempScale release];
    [paramArray release];
    [changeWater release];
    [waterChangeLabel release];
    [buttonPress release];
    [buttonPressLabel release];
    [feedMode release];
    [feedModeLabel release];
    [directConnect release];
    [super dealloc];
    
}
@end
