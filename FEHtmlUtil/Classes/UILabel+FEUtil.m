//
//  UILabel+FEUtil
//  FEHtmlTool
//
//  Created by FlyElephant on 2019/6/14.
//

#import "UILabel+FEUtil.h"

@implementation UILabel (FEUtil)

+ (NSAttributedString *)loadHtmlWithStyle:(NSString *)string fontName:(NSString *)fontName fontSize:(CGFloat)fontSize color:(NSString *)color {
    string = [string stringByAppendingString:[NSString stringWithFormat:@"<style>body{font-family: '%@'; font-size:%fpx;color: %@}</style>",
                                              fontName,
                                              fontSize, color]];
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding]
                                                                          options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
                                                                                    NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding)}
                                                               documentAttributes:nil
                                                                            error:nil];
    return attributedText;
}

+ (NSAttributedString *)loadHtmlWithSpan:(NSString *)string fontName:(NSString *)fontName fontSize:(CGFloat)fontSize color:(NSString *)color {
    string = [NSString stringWithFormat:@"<span style=\"font-family: '%@'; font-size: %f;color:%@\">%@</span>", fontName, fontSize, color, string];
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding]
                                                                          options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
                                                                                    NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding)}
                                                               documentAttributes:nil
                                                                            error:nil];
    return attributedText;
}

- (void)loadHtmlWithStyle:(NSString *)string color:(NSString *)color {
    string = [string stringByAppendingString:[NSString stringWithFormat:@"<style>body{font-family: '%@'; font-size:%fpx;color: %@}</style>",
                                              self.font.fontName,
                                              self.font.pointSize, color]];
    self.attributedText = [[NSAttributedString alloc] initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding]
                                                           options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
                                                                     NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding)}
                                                documentAttributes:nil
                                                             error:nil];
}

- (void)loadHtmlWithSpan:(NSString *)string color:(NSString *)color {
    string = [NSString stringWithFormat:@"<span style=\"font-family: '%@'; font-size: %f;color:%@\">%@</span>", self.font.fontName, self.font.pointSize, color,string];
    self.attributedText = [[NSAttributedString alloc] initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding]
                                                           options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
                                                                     NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding)}
                                                documentAttributes:nil
                                                             error:nil];
}


@end
