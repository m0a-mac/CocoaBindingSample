//
//  SampleModel.m
//  CocoaBindingSample
//
//  Created by m0a on 2014/08/02.
//  Copyright (c) 2014年 m0a. All rights reserved.
//

#import "SampleModel.h"

@interface SampleModel()

@end


@implementation SampleModel

-(id) init
{
    self = [super init];
    if (self)
    {
        _val1 = [NSNumber numberWithDouble:0];
        _val2 = [NSNumber numberWithDouble:0];
    }
    
    return self;
}

-(NSNumber*) avg_val
{
    return [NSNumber numberWithDouble:([self.val1 doubleValue] + [self.val2 doubleValue])/2.0];
}

-(NSNumber*) sum_val
{
    return [NSNumber numberWithDouble:([self.val1 doubleValue] + [self.val2 doubleValue])];
}

#pragma mark - KVO

+(NSSet*) keyPathsForValuesAffectingValueForKey:(NSString*)key
{
    if ([key isEqualToString:@"avg_val"] || [key isEqualToString:@"sum_val"])
    {
        return [NSSet setWithObjects:@"val1", @"val2", nil];
    }
    return nil;
}


@end
