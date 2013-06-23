//
//  MPViewController.m
//  memoPad
//
//  Created by Toru Furuya on 2013/06/22.
//  Copyright (c) 2013年 Toru Furuya. All rights reserved.
//

#import "MPViewController.h"
#import "MPMemoList.h"
#import "MPMemo.h"

@interface MPViewController ()
@property (weak, nonatomic) IBOutlet UITextField *memotext;
@end

@implementation MPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createMemo:(id)sender {
    MPMemo *memo = [[MPMemo alloc] init];
    memo.title = self.memotext.text;
    
    [[[MPMemoList sharedMemoList] memos] addObject:memo];
}

@end
