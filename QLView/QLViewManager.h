//
//  QLViewManager.h
//  QLView
//
//  Created by QianLong on 2017/12/12.
//  Copyright © 2017年 Renwei Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface QLViewManager : NSObject

@property(nonatomic,strong) UIView *view;

-(instancetype)initWithView:(UIView*)view;

-(QLViewManager*(^)(CGFloat x))x;
-(QLViewManager*(^)(CGFloat y))y;
-(QLViewManager*(^)(CGFloat w))w;
-(QLViewManager*(^)(CGFloat h))h;
-(QLViewManager*(^)(CGPoint p))center;
-(QLViewManager*(^)(CGPoint p))position;
-(QLViewManager*(^)(CGPoint p))anchorPosition;
-(QLViewManager*(^)(CGFloat cornerRadious))cornerRadious;
-(QLViewManager*(^)(UIView *view))addSubview;
-(QLViewManager*(^)(void(^)(UIView *v)))tapEvent;


@end
