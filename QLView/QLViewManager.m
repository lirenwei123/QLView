//
//  QLViewManager.m
//  QLView
//
//  Created by QianLong on 2017/12/12.
//  Copyright © 2017年 Renwei Li. All rights reserved.
//

#import "QLViewManager.h"



@implementation QLViewManager

-(instancetype)initWithView:(UIView *)view{
    self = [super init];
    if (!self)return nil;
    _view = view;
    return self;
}

-(QLViewManager *(^)(CGFloat))x{
    __weak typeof(self) wsf = self;
    return ^(CGFloat x){
      CGRect frame =   wsf.view.frame;
        frame.origin.x = x;
        wsf.view.frame = frame;
        return wsf;
    };
}


-(QLViewManager *(^)(CGFloat))y{
    __weak typeof(self) wsf = self;
    return ^(CGFloat y){
        CGRect frame =   wsf.view.frame;
        frame.origin.y = y;
        wsf.view.frame = frame;
        return wsf;
    };
}


-(QLViewManager *(^)(CGFloat))w{
    __weak typeof(self) wsf = self;
    return ^(CGFloat w){
        CGRect frame =   wsf.view.frame;
        frame.size.width = w;
        wsf.view.frame = frame;
        return wsf;
    };
}

-(QLViewManager *(^)(CGFloat))h{
    __weak typeof(self) wsf = self;
    return ^(CGFloat h){
        CGRect frame =   wsf.view.frame;
        frame.size.height = h;
        wsf.view.frame = frame;
        return wsf;
    };
}


-(QLViewManager *(^)(CGFloat))cornerRadious{
    __weak typeof(self) wsf = self;
    return ^(CGFloat f){
        wsf.view.layer.cornerRadius = f;
        return wsf;
    };
}


-(QLViewManager *(^)(CGPoint))center{
    __weak typeof(self) wsf = self;
    return ^(CGPoint p){
        wsf.view.center = p;
        return wsf;
    };
}


-(QLViewManager *(^)(CGPoint))position{
    __weak typeof(self) wsf = self;
    return ^(CGPoint p){
        wsf.view.layer.position = p;
        return wsf;
    };
}

-(QLViewManager *(^)(CGPoint))anchorPosition{
    __weak typeof(self) wsf = self;
    return ^(CGPoint p){
        wsf.view.layer.anchorPoint = p;
        return wsf;
    };
}

-(QLViewManager *(^)(UIView *))addSubview{
 __weak typeof(self) wsf = self;
    return ^(UIView *view){
        [wsf.view addSubview:view];
        return wsf;
    };
}















@end
