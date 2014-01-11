//
// Created by Marek Mościchowski on 11/01/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//


#import <AFNetworking/UIImageView+AFNetworking.h>
#import "UIImageView+LoremPixel.h"

static int MAXIMUM_IMAGE_SIZE = 1920;

@implementation UIImageView (LoremPixel)
- (void)getDummyImage
{
    [self getDummyImageForCategory:LoremPixelCategoryAny
                            inGray:NO
                     withDummyText:nil];
}

- (void)getDummyImageForCategory:(LoremPixelCategory)category inGray:(BOOL)gray withDummyText:(NSString *)dummyText
{
    NSString *urlString = @"http://lorempixel.com/";

    urlString = [self addGrayPathComponent:gray toString:urlString];

    CGSize sizeOfImage = [self getSizeOfImageAcordingToRetinaDisplay:self.frame.size];
    urlString = [self addSizePathComponent:sizeOfImage toString:urlString];

    urlString = [self addCategoryPathComponent:category toString:urlString];

    if(category != LoremPixelCategoryAny)
        urlString = [self addDummyTextPathComponent:dummyText toString:urlString];

    NSURL *url = [NSURL URLWithString:urlString];
    NSLog(@"urlString = %@", urlString);
    [self setImageWithURL:url];
}

#pragma mark Private methods

- (NSString *)addGrayPathComponent:(BOOL)gray toString:(NSString *)urlString
{
    if(gray)
    {
        return [urlString stringByAppendingString:@"g/"];
    }
    return urlString;
}

- (NSString *)addSizePathComponent:(CGSize)size toString:(NSString *)urlString
{
    int width = size.width > MAXIMUM_IMAGE_SIZE ? MAXIMUM_IMAGE_SIZE : (int)size.width;
    int height = size.height > MAXIMUM_IMAGE_SIZE ? MAXIMUM_IMAGE_SIZE : (int)size.height;
    return [urlString stringByAppendingString:[NSString stringWithFormat:@"%d/%d/", width, height]];
}

- (NSString *)addCategoryPathComponent:(LoremPixelCategory)category toString:(NSString *)urlString
{
    if(category == LoremPixelCategoryAny)
        return urlString;

    return [urlString stringByAppendingString:[NSString stringWithFormat:@"%@/",[self getStringForCategory:category]]];
}

- (NSString *)addDummyTextPathComponent:(NSString *)dummyText toString:(NSString *)urlString
{
    if(dummyText == nil)
        return urlString;

    return [urlString stringByAppendingString:dummyText];
}

- (NSString *)getStringForCategory:(LoremPixelCategory)category
{
    switch (category)
    {
        case LoremPixelCategoryAbstract:
            return @"abstract";
        case LoremPixelCategoryAnimals:
            return @"animals";
        case LoremPixelCategoryBusiness:
            return @"business";
        case LoremPixelCategoryCats:
            return @"cats";
        case LoremPixelCategoryCity:
            return @"city";
        case LoremPixelCategoryFood:
            return @"food";
        case LoremPixelCategoryNightlife:
            return @"nightlife";
        case LoremPixelCategoryFashion:
            return @"fashion";
        case LoremPixelCategoryPeople:
            return @"people";
        case LoremPixelCategoryNature:
            return @"nature";
        case LoremPixelCategorySports:
            return @"sports";
        case LoremPixelCategoryTechnics:
            return @"technics";
        case LoremPixelCategoryTransport:
            return @"transport";
        case LoremPixelCategoryAny:
        default:
            return @"";
    }
}

- (CGSize)getSizeOfImageAcordingToRetinaDisplay:(CGSize)imageViewSize
{
    if ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
            ([UIScreen mainScreen].scale == 2.0)) {
        return CGSizeMake(imageViewSize.width*2, imageViewSize.height*2);
    } else {
        return imageViewSize;
    }
}

@end