//
//  GTDeleteCellView.m
//  First
//
//  Created by 任国良 on 2020/1/2.
//  Copyright © 2020 rengl. All rights reserved.
//

#import "GTDeleteCellView.h"

@interface GTDeleteCellView ()

@property(nonatomic, strong, readwrite)UIView *backgroundview;
@property(nonatomic, strong, readwrite)UIButton *deleteButton;

@end

@implementation GTDeleteCellView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self addSubview:({
            _backgroundview = [[UIView alloc] initWithFrame:self.bounds];
            _backgroundview.backgroundColor = [UIColor blackColor];
            _backgroundview.alpha = 0.5;
            _backgroundview;
        })];
    }
    return self;
}


- (void)showDeleteView{
    [[UIApplication sharedApplication].windows[0] addSubview:self];
//    [UIView animateWithDuration:1.f animations:^{
//        self.deleteButton.frame = CGRectMake((self.bounds.size.width - 200)/2, (self.bounds.size.height - 200)/2, 200, 200);
//    }];
    [UIView animateWithDuration:1.f delay:0.f usingSpringWithDamping:0.5 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.deleteButton.frame = CGRectMake((self.bounds.size.width - 200)/2, (self.bounds.size.height - 200)/2, 200, 200);
    } completion:^(BOOL finished) {
        NSLog(@"321");
    }];
}

- (void)dismissDeleteView{
    [self removeFromSuperview];
}

- (void)_clickButton{
    [self removeFromSuperview];
}

@end
