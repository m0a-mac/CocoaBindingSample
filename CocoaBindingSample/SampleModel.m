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

-(NSNumber*) avg_val
{
    return [NSNumber numberWithDouble:([self.val1 doubleValue] + [self.val2 doubleValue])/2.0];
}

-(NSNumber*) sum_val
{
    return [NSNumber numberWithDouble:([self.val1 doubleValue] + [self.val2 doubleValue])];
}

@end
