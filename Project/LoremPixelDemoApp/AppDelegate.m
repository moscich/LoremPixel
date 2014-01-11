//
//  AppDelegate.m
//  LoremPixelDemoApp
//
//  Created by Marek Mościchowski on 11/01/14.
//  Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "AppDelegate.h"
#import "UIImageView+LoremPixel.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    UIViewController *controller = [[UIViewController alloc] init];

    [self.window setRootViewController:controller];
    [self.window addSubview:controller.view];

    // Demo method
    [self addImageViewsWithLoremIpsumPlaceholdersToController:controller];

    return YES;
}

// Demo method ads 16 imageView filled with dummy data from www.lorempixel.com
- (void)addImageViewsWithLoremIpsumPlaceholdersToController:(UIViewController *)controller
{
    // get screen size
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;

    // itarate 16 times to add imageviews
    for(int i = 0; i < 16; i++)
    {
        // create an imageView
        UIImageView *imageView = [[UIImageView alloc] init];
        // assign its frame
        imageView.frame = CGRectMake(10 + (i%4)*(screenSize.width/4.2), 10 + (i/4)*(screenSize.width/4.2),screenSize.width/4.5, screenSize.width/4.5);

        // To showcase different categories, 14 first images will be loaded from different category
        if(i < 14)
        {
            // Load dummy image for current imageView frame in category, b&w or color and with optional dummy text written on the image
            [imageView getDummyImageForCategory:i
                                         inGray:i%2==0
                                  withDummyText:[NSString stringWithFormat:@"imageNr%d",i]];
        }
        else
        {
            // For the last 2 images just load a random image for current imageView frame size
            [imageView getDummyImage];
        }

        // add newly created imageView to viewControllers view.
        [controller.view addSubview:imageView];
    }
}

@end
