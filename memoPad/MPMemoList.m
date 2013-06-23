//
//  MPMemoList.m
//  memoPad
//
//  Created by Toru Furuya on 2013/06/23.
//  Copyright (c) 2013年 Toru Furuya. All rights reserved.
//

#import "MPMemoList.h"

@implementation MPMemoList

+ (id)sharedMemoList {
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

- (id)init {
    
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.memos = [[NSMutableArray alloc] init];
    return self;
}

@end
