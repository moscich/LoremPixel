//
// Created by Marek Mościchowski on 11/01/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//


#import <Foundation/Foundation.h>

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

// fills UIImageView with image of its size
- (void)getDummyImage;
// fills UIImageView with image of its size in given category, color or b&w, with dummyText
- (void)getDummyImageForCategory:(LoremPixelCategory)category inGray:(BOOL)gray withDummyText:(NSString *)dummyText;

@end