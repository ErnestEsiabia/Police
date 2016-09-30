//
//  ViewController.m
//  movie
//
//  Created by ilabadmin on 12/08/2016.
//  Copyright © 2016 ilabadmin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)playVideo:(id)sender {
    NSString *path=[[NSBundle mainBundle]
                    pathForResource:@"1 I Want You Back (Z-Trip Remix)" ofType:@"mp3"];
    audioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
                 [audioPlayer play];
}

- (IBAction)playAudio:(id)sender {
    NSString *path=[[NSBundle mainBundle]
                    pathForResource:@"Alkaline" ofType:@"mov"];
    moviePlayer=[[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL fileURLWithPath:path]];
    [self presentModalViewController:moviePlayer animated:NO];
}
@end
