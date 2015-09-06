//
//  ScratchableLatex.h
//  WMScratchableLatex
//
//  Created by v1 on 15/9/2.
//  Copyright (c) 2015年 weiman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScratchableLatex : UIView

/**
 *  根据图标和名称创建一个九宫格
 *
 *  @param icons  九宫格的图标
 *  @param titles 九宫格的文字
 *  @param numsOfCoums  九宫格的列数
 *  注：此方法只能根据屏幕宽度平均分配各列，各列之间并无空格
 */
-(void)scratchableLatexWithIcons:(NSArray *)icons andTitles:(NSArray *)titles andNumsOfCloums:(int)numsOfCloums andViewX:(CGFloat)VX andViewY:(CGFloat)VY;
/**
 *  根据图标和名称创建一个九宫格
 *
 *  @param icons        图标
 *  @param titles       文字
 *  @param numsOfCloums 列数
 *  @param VX           九宫格所在的X
 *  @param VY           九宫格所在的Y
 *  @param gap          每个单元格之间的间隙
 */
-(void)scratchableLatexWithIcons:(NSArray *)icons andTitles:(NSArray *)titles andNumsOfCloums:(int)numsOfCloums andViewX:(CGFloat)VX andViewY:(CGFloat)VY andTheGap:(CGFloat)gap;


@end
