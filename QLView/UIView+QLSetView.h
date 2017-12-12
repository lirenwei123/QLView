//
//  UIView+QLSetView.h
//  QLView
//
//  Created by QianLong on 2017/12/12.
//  Copyright © 2017年 Renwei Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QLViewManager.h"

@interface UIView (QLSetView)

-(void)ql_setView:(void (^)(QLViewManager *m))manager;

@end
