//
//  ViewController.m
//  Gestures
//
//  Created by Balasubrahmanyam Dhurjaty on 01/10/16.
//  Copyright © 2016 Balasubrahmanyam Dhurjaty. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *view1;
}
-(void)rightSwipeMethod:(UISwipeGestureRecognizer *)gesture;
-(void)leftSwipeMethod:(UISwipeGestureRecognizer *)gesture;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UISwipeGestureRecognizer *rightSwipe =[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(rightSwipeMethod:)];
    UISwipeGestureRecognizer *leftSwipe =[[UISwipeGestureRecognizer alloc] initWithTarget:self action: @selector(leftSwipeMethod:)];
    
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    
//    [self.view addGestureRecognizer:rightSwipe];
//    [self.view addGestureRecognizer:leftSwipe];
    
    view1 = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    view1.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:view1];
    
    [view1 addGestureRecognizer:rightSwipe];
    [view1 addGestureRecognizer:leftSwipe];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)rightSwipeMethod:(UISwipeGestureRecognizer *)gesture{
    self.view.backgroundColor = [UIColor redColor];
    view1.backgroundColor = [UIColor greenColor];
}
-(void)leftSwipeMethod:(UISwipeGestureRecognizer *)gesture{
    self.view.backgroundColor = [UIColor greenColor];
    view1.backgroundColor = [UIColor redColor];
}
@end

