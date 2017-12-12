//
//  ViewController.m
//  QLView
//
//  Created by QianLong on 2017/12/12.
//  Copyright © 2017年 Renwei Li. All rights reserved.
//

#import "ViewController.h"
#import "UIView+QLSetView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *v = [[UIView alloc]init];
    v.backgroundColor =  [UIColor grayColor];
    [v ql_setView:^(QLViewManager *m) {
        m.x(0).y(0).w(100).h(100).position(self.view.center).cornerRadious(10);
    }];


    [v tapEvent:^(UIView *view) {
        [view ql_setView:^(QLViewManager *m) {
            m.h(m.view.frame.size.height + 20).w(m.view.frame.size.width + 20).position(self.view.center);
        }];
    }];

    [self.view addSubview:v];


    [NSTimer scheduledTimerWithTimeInterval:0.1 repeats:YES block:^(NSTimer * _Nonnull timer) {

            v.transform = CGAffineTransformRotate(v.transform, M_PI/4);

    }];


}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
