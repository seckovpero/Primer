//
//  FantasticView.m
//  RWPickFlavor
//
//  Created by AspidaMacBook on 13/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import "FantasticView.h"
#import <Masonry/Masonry.h>

@implementation FantasticView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupViews];
        [self setupConstraints];
        _counter = 0;
        _colors = [NSMutableArray arrayWithObjects:[UIColor redColor],[UIColor greenColor],[UIColor yellowColor],[UIColor blueColor], nil]
        
    }
    return self;
}

-(void)setupViews {
    
    self.label1 = [[UILabel alloc] init];
    self.label1.backgroundColor = [UIColor redColor];
    
    self.label2 = [[UILabel alloc] init];
    self.label2.backgroundColor = [UIColor greenColor];
    
    [self addSubview:_label1];
    [self addSubview:_label2];
}

-(void)setupConstraints {
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(self);
        make.height.equalTo(self).dividedBy(2);
    }];
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self);
        make.height.equalTo(self).dividedBy(2);
    }];
}

-(void)changeColors {
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.5 repeats:YES block:^(NSTimer * _Nonnull timer) {
        int rnd = arc4random_uniform([_colors count]);
        self.label1.backgroundColor = _colors[rnd];
        int rnd1 = arc4random_uniform([_colors count]);
        self.label2.backgroundColor = _colors[rnd1];
    }];
}

-(void)stopChangingColors {
    [_timer invalidate];
}
@end
