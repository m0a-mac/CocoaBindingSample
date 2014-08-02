//
//  AvgValueTransformer.m
//  CocoaBindingSample
//
//  Created by m0a on 2014/08/02.
//  Copyright (c) 2014年 m0a. All rights reserved.
//

#import "AvgValueTransformer.h"

@implementation AvgValueTransformer
+ (Class)transformedValueClass { return [NSString class]; }
+ (BOOL)allowsReverseTransformation { return NO; }
- (id)transformedValue:(id)value {
    return (value == nil)? nil :[NSString stringWithFormat:@"avg: %0.2f",[value doubleValue]];
}
@end
