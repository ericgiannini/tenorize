//
//  VideoPlayer.h
//  Tenorize
//
//  Created by Eric Giannini on 8/29/18.
//  Copyright © 2018 Eric Giannini. All rights reserved.
//

#import <AVKit/AVKit.h>
#import <Foundation/Foundation.h>

@interface VideoPlayer : NSObject

+(nonnull AVPlayerViewController *)playVideoWithURL:(NSURL *_Nonnull)url;

@end
