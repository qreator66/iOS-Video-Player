//
//  HKVideoPlayerViewController.m
//  iOS Video Player
//
//  Created by Hai Kieu on 11/22/14.
//  Copyright (c) 2014 haikieu2907@gmail.com. All rights reserved.
//

#import "HKVideoPlayerViewController.h"
#import "HKVideoPlayerThemeView.h"
#import "HKVideoPlayerCoreView.h"
@interface HKVideoPlayerViewController ()

@end

@implementation HKVideoPlayerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_themeView];
    [self.view bringSubviewToFront:_themeView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - HKVideoPlayerCoreDelegate

-(void)handlePlay
{
    [_themeView performSelectorOnMainThread:@selector(playerWillPlay) withObject:nil waitUntilDone:YES];
    
    [_coreView handlePlay];
}

-(void)handleStop
{
    [_themeView performSelectorOnMainThread:@selector(playerWillStop) withObject:nil waitUntilDone:YES];
    
    [_coreView handleStop];
}
-(void)handlePause
{
    [_themeView performSelectorOnMainThread:@selector(playerWillPause) withObject:nil waitUntilDone:YES];
    
    [_coreView handlePause];
}
-(void)handleRewind:(float)speed
{
    [_themeView performSelectorOnMainThread:@selector(playerWillRewind:) withObject:[NSNumber numberWithFloat:speed] waitUntilDone:YES];
    
    [_coreView handleRewind:speed];
}
-(void)handleFastforward:(float)speed
{
    [_themeView performSelectorOnMainThread:@selector(playerWillFastforward:) withObject:[NSNumber numberWithFloat:speed] waitUntilDone:YES];
    
    [_coreView handleFastforward:speed];
}

-(void)handleCloseView
{
    [_themeView performSelectorOnMainThread:@selector(playerWillCloseView) withObject:nil waitUntilDone:YES];
    
    [_coreView handleCloseView];
}

-(void)handleResumePosition:(float)position
{
    [_themeView performSelectorOnMainThread:@selector(playerWillUpdatePosition:) withObject:[NSNumber numberWithFloat:position] waitUntilDone:YES];
    
    [_coreView handleResumePosition:position];
}

-(void)handleEnterFullscreen
{
    [_themeView performSelectorOnMainThread:@selector(handleEnterFullscreen) withObject:nil waitUntilDone:YES];
    
    [_coreView handleEnterFullscreen];
}

-(void)handleExitFullscreen
{
    [_themeView performSelectorOnMainThread:@selector(handleExitFullscreen) withObject:nil waitUntilDone:YES];
    
    [_coreView handleExitFullscreen];
}

-(void)handleResizeWithFrame:(CGRect *)frame
{
    
}

#pragma mark - HKVideoPlayerCore

-(void)beginViewSessionWithUrl:(NSURL *)url
{
    
}

-(void)clearViewSession
{
    
}

-(void)playerDidPlay
{
    [_themeView performSelectorOnMainThread:@selector(playerDidPlay) withObject:nil waitUntilDone:NO];
}

-(void)playerDidStop
{
    [_themeView performSelectorOnMainThread:@selector(playerDidStop) withObject:nil waitUntilDone:NO];
}

-(void)playerDidPause
{
    [_themeView performSelectorOnMainThread:@selector(playerDidPause) withObject:nil waitUntilDone:NO];
}

-(void)playerDidLoad
{
    [_themeView performSelectorOnMainThread:@selector(playerDidReady) withObject:nil waitUntilDone:NO];
}

-(void)playerDidFailure
{
    [_themeView performSelectorOnMainThread:@selector(playerDidFailure) withObject:nil waitUntilDone:NO];
}

-(void)playerDidReady
{
    [_themeView performSelectorOnMainThread:@selector(playerDidReady) withObject:nil waitUntilDone:NO];
}

-(void)playerDidExitFullscreen
{
    [_themeView performSelectorOnMainThread:@selector(playerDidExitFullscreen) withObject:nil waitUntilDone:NO];
}

-(void)playerDidEnterFullscreen
{
    [_themeView performSelectorOnMainThread:@selector(playerDidEnterFullscreen) withObject:nil waitUntilDone:NO];
}

-(void)playerDidCloseView
{
    [_themeView performSelectorOnMainThread:@selector(playerDidCloseView) withObject:nil waitUntilDone:NO];
    [_delegate videoPlayer:self didCloseView:self.view];
}

-(void)playerDidUpdatePosition:(float)position
{
    [_themeView performSelectorOnMainThread:@selector(playerDidUpdatePosition:) withObject:[NSNumber numberWithFloat:position] waitUntilDone:YES];
}

-(void)playerDidFastforward:(float)speed
{
    [_themeView performSelectorOnMainThread:@selector(playerDidFastforward:) withObject:[NSNumber numberWithFloat:speed] waitUntilDone:YES];
}
-(void)playerDidRewind:(float)speed
{
    [_themeView performSelectorOnMainThread:@selector(playerDidRewind:) withObject:[NSNumber numberWithFloat:speed] waitUntilDone:YES];
}

#pragma mark - deprecated methods

-(void)playerWillCloseView
{
    
}

-(void)playerWillLoad
{
    
}

-(void)playerWillRewind:(float)speed
{
    
}

-(void)playerWillPlay
{
    
}

-(void)playerWillUpdatePosition:(float)position
{
    
}

-(void)playerWillStop
{
    
}

-(void)playerWillPause
{
    
}

-(void)playerWillFastforward:(float)speed
{
    
}

-(void)playerWillExitFullscreen
{
    
}

-(void)playerWillEnterFullscreen
{
    
}

@end
