//
//  VideoPlayer.m
//  Tenorize
//
//  Created by Eric Giannini on 8/29/18.
//  Copyright © 2018 Eric Giannini. All rights reserved.
//

#import "VideoPlayer.h"
#import <Foundation/Foundation.h>

@implementation VideoPlayer

+(AVPlayerViewController *)playVideoWithURL:(NSURL *)url {
    
    AVPlayer *player = [[AVPlayer alloc] initWithURL:url];
    
    AVPlayerViewController *playerVC = [[AVPlayerViewController alloc] init];
    [playerVC setPlayer:player];
    
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    
    [[window rootViewController] presentViewController:playerVC animated:YES completion:^{
        [player play];
    }];
    
    return playerVC;
}

@end
