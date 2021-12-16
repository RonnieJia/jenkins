//
//  ViewController.m
//  jenkins
//
//  Created by bono on 2021/12/16.
//

#import "ViewController.h"
#import <MBProgressHUD/MBProgressHUD.h>

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)showHUD:(id)sender {
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}


@end
