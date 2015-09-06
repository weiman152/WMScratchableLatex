//
//  ViewController.m
//  WMScratchableLatex
//
//  Created by v1 on 15/9/2.
//  Copyright (c) 2015年 weiman. All rights reserved.
//

#import "ViewController.h"
#import "ScratchableLatex.h"

@interface ViewController ()

//九宫格的图标
@property(nonatomic,strong)NSMutableArray * icons;
//九宫格的文字
@property(nonatomic,strong)NSArray * titles;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _icons=[NSMutableArray array];
    _titles=@[@"我",@"是",@"好",@"孩",@"子",@"你",@"是",@"么"];
    for (int i=0; i<8; i++)
    {
        NSString * iconName=[NSString stringWithFormat:@"%d.jpg",i+1];
        [_icons addObject:iconName];
    }
    
    
    ScratchableLatex * scra=[[ScratchableLatex alloc]init];
    //[scra scratchableLatexWithIcons:_icons andTitles:_titles andNumsOfCloums:4 andViewX:0 andViewY:100];
    [scra scratchableLatexWithIcons:_icons andTitles:_titles andNumsOfCloums:3 andViewX:0 andViewY:100 andTheGap:20];
    [self.view addSubview:scra];
    
    
}


@end
