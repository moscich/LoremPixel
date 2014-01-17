//
// Created by Marek Mościchowski on 11/01/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//


#import <Foundation/Foundation.h>

/**
 UIImageView category that simply enables to load dummy image from www.lorempixel.com 
 */

// categories available in Lorem Pixel
typedef enum
{
    LoremPixelCategoryAbstract,
    LoremPixelCategoryAnimals,
    LoremPixelCategoryBusiness,
    LoremPixelCategoryCats,
    LoremPixelCategoryCity,
    LoremPixelCategoryFood,
    LoremPixelCategoryNightlife,
    LoremPixelCategoryFashion,
    LoremPixelCategoryPeople,
    LoremPixelCategoryNature,
    LoremPixelCategorySports,
    LoremPixelCategoryTechnics,
    LoremPixelCategoryTransport,
    LoremPixelCategoryAny
}LoremPixelCategory;

@interface UIImageView (LoremPixel)

/** 
fills UIImageView with image of its size
*/
- (void)getDummyImage;
/** 
fills UIImageView with image of its size in given category, color or b&w, with dummyText
 @param category image category
 @param gray should image be b&w
 @param dummyText text displayed on image
*/
- (void)getDummyImageForCategory:(LoremPixelCategory)category inGray:(BOOL)gray withDummyText:(NSString *)dummyText;

@end