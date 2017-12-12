//
//  UIView+QLSetView.m
//  QLView
//
//  Created by QianLong on 2017/12/12.
//  Copyright © 2017年 Renwei Li. All rights reserved.
//

#import "UIView+QLSetView.h"
#import <objc/runtime.h>

@implementation UIView (QLSetView)

-(void)ql_setView:(void (^)(QLViewManager *))manager{
    QLViewManager *M  =[[QLViewManager alloc]initWithView:self];
    manager(M);
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    void (^block)(UIView *)  = objc_getAssociatedObject(self, @"key");
    if (block) {
        block(self);
    }

}




@end
