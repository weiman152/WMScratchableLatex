//
//  ScratchableLatex.m
//  WMScratchableLatex
//
//  Created by v1 on 15/9/2.
//  Copyright (c) 2015年 weiman. All rights reserved.
//

#import "ScratchableLatex.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@implementation ScratchableLatex

-(void)scratchableLatexWithIcons:(NSArray *)icons andTitles:(NSArray *)titles andNumsOfCloums:(int)numsOfCloums andViewX:(CGFloat)VX andViewY:(CGFloat)VY
{
    CGFloat W=WIDTH/numsOfCloums;
    CGFloat H=W;
    
    self.frame=CGRectMake(VX, VY, WIDTH,(icons.count/numsOfCloums)*H);
//    self.backgroundColor=[UIColor yellowColor];
    for (int i=0; i<icons.count; i++)
    {
        CGFloat row=i/numsOfCloums;//行数
        CGFloat clo=i%numsOfCloums;//列数,第几列
        CGFloat X=W*clo;
        CGFloat Y=(H+30)*row;
        
        UIImage * image=[UIImage imageNamed:icons[i]];
        UIImageView * imageV=[[UIImageView alloc]initWithImage:image];
        imageV.frame=CGRectMake(X, Y, W, H);
        [self addSubview:imageV];

        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(X, Y+H, W, 30)];
        label.text=titles[i];
        label.textAlignment=NSTextAlignmentCenter;
        [self addSubview:label];
    }
}

-(void)scratchableLatexWithIcons:(NSArray *)icons andTitles:(NSArray *)titles andNumsOfCloums:(int)numsOfCloums andViewX:(CGFloat)VX andViewY:(CGFloat)VY andTheGap:(CGFloat)gap
{
    CGFloat W=(WIDTH-gap*numsOfCloums*2)/numsOfCloums;
    CGFloat H=W;

    self.frame=CGRectMake(VX, VY, WIDTH,(icons.count/numsOfCloums)*H);
    
    for (int i=0; i<icons.count; i++)
    {
        CGFloat row=i/numsOfCloums;//行数
        CGFloat clo=i%numsOfCloums;//列数,第几列
        CGFloat X=(2*clo+1)*gap+clo*W;
        CGFloat Y=(H+30+gap)*row;
        
        UIImage * image=[UIImage imageNamed:icons[i]];
        UIImageView * imageV=[[UIImageView alloc]initWithImage:image];
        imageV.frame=CGRectMake(X, Y, W, H);
        [self addSubview:imageV];
        
        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(X, Y+H, W, 30)];
        label.text=titles[i];
        label.textAlignment=NSTextAlignmentCenter;
        [self addSubview:label];
    }

}

@end
