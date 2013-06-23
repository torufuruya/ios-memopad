//
//  MPMemoList.h
//  memoPad
//
//  Created by Toru Furuya on 2013/06/23.
//  Copyright (c) 2013年 Toru Furuya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MPMemoList : NSObject

@property (nonatomic, strong) NSMutableArray *memos;

+ (id)sharedMemoList;

@end
