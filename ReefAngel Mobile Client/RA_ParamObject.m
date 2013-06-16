//
//  RA_ParamObject.m
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RA_ParamObject.h"


@implementation RA

@synthesize T1, T2, T3, PH, R, RON, ROFF, R1, RON1, ROFF1, R2, RON2, 
            ROFF2, R3, RON3, ROFF3, R4, RON4, ROFF4, R5, RON5, ROFF5, R6, RON6, ROFF6,
            R7, RON7, ROFF7,ATOLOW, ATOHIGH, formattedpH, formattedTemp1, formattedTemp2, formattedTemp3,
            isRelay1Active, isRelay2Active, isRelay3Active, isRelay4Active, isRelay5Active, isRelay6Active,
            isRelay7Active, isRelay8Active, isRelay1ONMask, isRelay2ONMask, isRelay3ONMask, isRelay4ONMask, isRelay5ONMask,
            isRelay6ONMask, isRelay7ONMask, isRelay8ONMask, isRelay1OFFMask, isRelay2OFFMask, isRelay3OFFMask, isRelay4OFFMask, isRelay5OFFMask, isRelay6OFFMask, isRelay7OFFMask, isRelay8OFFMask,isRelay01Active, isRelay02Active, isRelay03Active, isRelay04Active, isRelay05Active, isRelay06Active, isRelay07Active, isRelay08Active,
isRelay01ONMask, isRelay02ONMask, isRelay03ONMask, isRelay04ONMask, isRelay05ONMask, isRelay06ONMask, isRelay07ONMask, isRelay08ONMask,
isRelay01OFFMask, isRelay02OFFMask, isRelay03OFFMask, isRelay04OFFMask, isRelay05OFFMask, isRelay06OFFMask, isRelay07OFFMask, isRelay08OFFMask,isRelay11Active, isRelay12Active, isRelay13Active, isRelay14Active, isRelay15Active, isRelay16Active, isRelay17Active, isRelay18Active,
isRelay11ONMask, isRelay12ONMask, isRelay13ONMask, isRelay14ONMask, isRelay15ONMask, isRelay16ONMask, isRelay17ONMask, isRelay18ONMask,
isRelay11OFFMask, isRelay12OFFMask, isRelay13OFFMask, isRelay14OFFMask, isRelay15OFFMask, isRelay16OFFMask, isRelay17OFFMask, isRelay18OFFMask, PWMA, PWMD, SAL, formattedSal;
@synthesize T1N, T2N, T3N, R1N, R2N, R3N, R4N, R5N, R6N, R7N, R8N, R11N, R12N, R13N, R14N, R15N, R16N, R17N, R18N, R21N, R22N, R23N, R24N, R25N, R26N, R27N, R28N;
@synthesize AIW, AIB, AIRB, RFM, RFS, RFD, RFW, RFB, RFG, RFR, RFI, ORP, PWME0, LOGDATE, REM, EM, WL, RFRB;

-(void) dealloc
{
    [AIW release];
    [AIB release];
    [AIRB release];
    [R release];
    [RON release];
    [ROFF release];
    [R1 release];
    [RON1 release];
    [ROFF1 release];
    [R2 release];
    [RON2 release];
    [ROFF2 release];
    [R3 release];
    [RON3 release];
    [ROFF3 release];
    [R4 release];
    [RON4 release];
    [ROFF4 release];
    [R5 release];
    [RON5 release];
    [ROFF5 release];
    [R6 release];
    [RON6 release];
    [ROFF6 release];
    [R7 release];
    [RON7 release];
    [ROFF7 release];
    [ATOLOW release];
    [ATOHIGH release];
    [PWMD release];
    [PWMA release];
    [WL release];
    [ORP release];
    
    [T1N release];
    [T2N release];
    [T3N release];
    [R1N release];
    [R2N release];
    [R3N release];
    [R4N release];
    [R5N release];
    [R6N release];
    [R7N release];
    [R8N release];
    [R11N release];
    [R12N release];
    [R13N release];
    [R14N release];
    [R15N release];
    [R16N release];
    [R17N release];
    [R18N release];
    [R21N release];
    [R22N release];
    [R23N release];
    [R24N release];
    [R25N release];
    [R26N release];
    [R27N release];
    [R28N release];
    
    [RFB release];
    [RFD release];
    [RFG release];
    [RFI release];
    [RFM release];
    [RFR release];
    [RFS release];
    [RFW release];
    [RFRB release];
    [PWME0 release];
    [LOGDATE release];
    [REM release];
    [EM release];
    
    [super dealloc];
}
 
@end
