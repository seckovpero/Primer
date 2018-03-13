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

@end
