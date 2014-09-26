//
//  ViewController.m
//  Passing Data Challenge Solution
//
//  Created by Joshua Haines on 9/26/14.
//  Copyright (c) 2014 Joshua Haines. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([sender isKindOfClass:[UIButton class]]) {
        if ([segue.destinationViewController isKindOfClass:[DetailViewController class]]) {
            DetailViewController *nextView = segue.destinationViewController;
            nextView.textString = self.textField.text;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
