//
//  SCPopView.m
//  SCNavTabBarController
//
//  Created by ShiCang on 14/11/17.
//  Copyright (c) 2014年 SCNavTabBarController. All rights reserved.
//

#import "SCPopView.h"
#import "CommonMacro.h"

@implementation SCPopView

#pragma mark - Private Methods
#pragma mark -
- (NSArray *)getButtonsWidthWithTitles:(NSArray *)titles;
{
    NSMutableArray *widths = [@[] mutableCopy];
    
    for (NSString *title in titles)
    {
        CGSize size = [title sizeWithFont:[UIFont systemFontOfSize:[UIFont systemFontSize]]];
        NSNumber *width = [NSNumber numberWithFloat:size.width + 40.0f];
        [widths addObject:width];
    }
    
    return widths;
}

- (void)updateSubViewsWithItemWidths:(NSArray *)itemWidths;
{
    CGFloat buttonX = DOT_COORDINATE;
    CGFloat buttonY = DOT_COORDINATE;
    for (NSInteger index = 0; index < [itemWidths count]; index++)
    {
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(buttonX+ [itemWidths[index] floatValue]/2-25, buttonY - 55, 50, 50)];
        imageView.image = [UIImage imageNamed:@"Persion_Image"];
        imageView.layer.cornerRadius = 25;
        imageView.layer.masksToBounds = YES;
        [self addSubview:imageView];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.tag = index;
        button.frame = CGRectMake(buttonX, buttonY, [itemWidths[index] floatValue], 30);
        button.titleLabel.font = [UIFont systemFontOfSize:11];
        [button setTitle:_itemNames[index] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(itemPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
        buttonX += [itemWidths[index] floatValue];
        
        @try {
            if ((buttonX + [itemWidths[index + 1] floatValue]) >= SCREEN_WIDTH)
            {
                buttonX = DOT_COORDINATE;
                buttonY += 90;
            }
        }
        @catch (NSException *exception) {
            
        }
        @finally {
            
        }
    }
}

- (void)itemPressed:(UIButton *)button
{
    [_delegate itemPressedWithIndex:button.tag];
}

#pragma mark - Public Methods
#pragma marl -
- (void)setItemNames:(NSArray *)itemNames
{
    _itemNames = itemNames;
    
    NSArray *itemWidths = [self getButtonsWidthWithTitles:itemNames];
    [self updateSubViewsWithItemWidths:itemWidths];
}

@end

