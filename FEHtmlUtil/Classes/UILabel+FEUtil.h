//
//  UILabel+FEUtil.h
//  FEHtmlTool
//
//  Created by FlyElephant on 2019/5/14.
//

#import <UIKit/UIKit.h>

@interface UILabel (FEUtil)

+ (NSAttributedString *)loadHtmlWithStyle:(NSString *)string fontName:(NSString *)fontName fontSize:(CGFloat)fontSize color:(NSString *)color;

+ (NSAttributedString *)loadHtmlWithSpan:(NSString *)string fontName:(NSString *)fontName fontSize:(CGFloat)fontSize color:(NSString *)color;

- (void)loadHtmlWithStyle:(NSString *)string color:(NSString *)color;

- (void)loadHtmlWithSpan:(NSString *)string color:(NSString *)color;

@end

