# LoremPixel

[![Version](http://cocoapod-badges.herokuapp.com/v/LoremPixel/badge.png)](http://cocoadocs.org/docsets/LoremPixel)
[![Platform](http://cocoapod-badges.herokuapp.com/p/LoremPixel/badge.png)](http://cocoadocs.org/docsets/LoremPixel)

LoremPixel is a simple library that fills UIImageView with image from [www.lorempixel.com](www.lorempixel.com)

## Usage

To run the example project; clone the repo, and run `pod install` from the Project directory first.

Create a UIImageView

	UIImageView *imageView = [[UIImageView alloc] init];

Assign its frame

	imageView.frame = some frame

Load dummy image

	[imageView getDummyImage];

## Requirements

LoremPixel requires [AFNetworking](https://github.com/AFNetworking/AFNetworking) version 1.3.3 or greater

## Installation

LoremPixel is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "LoremPixel"

## Author

Marek Mościchowski, moscich@gmail.com

## License

LoremPixel is available under the MIT license. See the LICENSE file for more info.

