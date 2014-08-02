//
//  SampleModel.h
//  CocoaBindingSample
//
//  Created by m0a on 2014/08/02.
//  Copyright (c) 2014年 m0a. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleModel : NSObject
@property(strong) NSNumber* val1;
@property(strong) NSNumber* val2;
@property(readonly) NSNumber* avg_val;
@property(readonly) NSNumber* sum_val;
@end
