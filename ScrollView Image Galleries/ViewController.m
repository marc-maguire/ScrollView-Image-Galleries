//
//  ViewController.m
//  ScrollView Image Galleries
//
//  Created by Marc Maguire on 2017-05-15.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic) UIImageView *imageView;
@property (nonatomic) UIImageView *imageView2;
@property (nonatomic) UIImageView *imageView3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.pagingEnabled = YES;
    
    self.scrollView.delegate = self;
    
    
    self.imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field.jpg"]];
    [self.scrollView addSubview:self.imageView];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    self.imageView2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse-night.jpg"]];
    [self.scrollView addSubview:self.imageView2];
    self.imageView2.contentMode = UIViewContentModeScaleAspectFit;
    
    self.imageView3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse.jpg"]];
    [self.scrollView addSubview:self. imageView3];
    self.imageView3.contentMode = UIViewContentModeScaleAspectFit;
    
    [self setupImageViews];
    //set the frames using the width and height of the screen. all the widths and height are the same as the screen frame
    //then the y values are all the same,
    // x values are all based on widths, first 1 is 0, second is width, third is width x2, the scrollview content size is widthx3
    
    //on the page control set the alpha to o.5, control.layer.zposition = 10, call sizetofit, adjust the center doing self.view.frame midx, then rectgetheight of frame - self.control.bounds.size.height/2

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupImageViews {
    
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;
    
    self.imageView.frame = CGRectMake(0, self.view.frame.origin.y, width, height);
    self.imageView2.frame = CGRectMake(width, self.view.frame.origin.y, width, height);
    self.imageView3.frame = CGRectMake(width*2, self.view.frame.origin.y, width, height);
    self.scrollView.contentSize = CGSizeMake(width*3, height);
//    [self.view setNeedsDisplay];
}

@end
