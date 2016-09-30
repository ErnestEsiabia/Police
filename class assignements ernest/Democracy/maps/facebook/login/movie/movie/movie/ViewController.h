//
//  ViewController.h
//  movie
//
//  Created by ilabadmin on 12/08/2016.
//  Copyright © 2016 ilabadmin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController
{
    AVAudioPlayer *audioPlayer;
    MPMoviePlayerViewController *moviePlayer;
}
- (IBAction)playVideo:(id)sender;
- (IBAction)playAudio:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *playAudio;
@property (weak, nonatomic) IBOutlet UIButton *playVideo;


@end

