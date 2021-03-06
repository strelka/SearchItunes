//
//  SISTableViewCell.m
//  SearchItunes
//
//  Created by Jullia Sharaeva on 05.05.17.
//  Copyright © 2017 Julia Sharaeva. All rights reserved.
//

#import "SISTableViewCell.h"
#import <Masonry/Masonry.h>


NSString *const SISCellIdentifier = @"SISCellIdentifier";
@interface SISTableViewCell()

@end

@implementation SISTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        [self createSubviews];
    }
    return self;
}

-(void) createSubviews{
    _artist = [UILabel new];
    _track = [UILabel new];
    _collection = [UILabel new];
    _price = [UILabel new];
    _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    
    UIImageView *artistIco = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"mic"]];
    
    UIImageView *songIco = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"song"]];
    
    UIImageView *collectIco = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cddrive"]];
    
    UIImageView *moneyIco = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"money"]];
    
    
    [self addSubview:artistIco];
    [self addSubview:songIco];
    [self addSubview:collectIco];
    [self addSubview:moneyIco];
    [self addSubview:_imgView];
    
    [self addSubview:_artist];
    [self addSubview:_track];
    [self addSubview:_collection];
    [self addSubview:_price];
    
    [_price setFont:[UIFont boldSystemFontOfSize:14]];
    [_price setTextAlignment:NSTextAlignmentCenter];
    [_price setTextColor:[UIColor darkGrayColor]];
    
    
    [_track setFont:[UIFont boldSystemFontOfSize:14]];
    [_track setTextColor:[UIColor darkGrayColor]];
    
    [_artist setFont:[UIFont boldSystemFontOfSize:13]];
    [_artist setTextColor:[UIColor lightGrayColor]];
    
    [_collection setFont:[UIFont boldSystemFontOfSize:14]];
    [_collection setTextColor:[UIColor darkGrayColor]];
    
    [moneyIco mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.height.equalTo(@30);
        make.width.equalTo(@30);
        
        make.bottom.equalTo(_artist.mas_centerY);
    }];
    
    [_price mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(self.mas_bottom);
        make.top.equalTo(self.mas_centerY);
        make.centerX.equalTo(moneyIco.mas_centerX);
    }];
    
    
    [_imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.left.equalTo(self.mas_left);
        make.height.equalTo(self.mas_height);
        make.width.equalTo(self.mas_height);
    }];
    
    [_track mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.height.equalTo(@(18));
        make.left.equalTo(self.imgView.mas_right).with.offset(25);
        make.right.equalTo(self.mas_right).with.offset(-35);
    }];
    
    
    [_artist mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_track.mas_bottom);
        make.left.equalTo(self.imgView.mas_right).with.offset(25);
        make.right.equalTo(self.mas_right).with.offset(-35);
        make.height.equalTo(@(18));
    }];
    
    [_collection mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_artist.mas_bottom);
        make.height.equalTo(@(18));
        make.left.equalTo(self.imgView.mas_right).with.offset(25);
        make.right.equalTo(self.mas_right).with.offset(-35);
    }];
    
    [artistIco mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imgView.mas_right).with.offset(5);
        make.height.equalTo(@16);
        make.width.equalTo(@16);
        
        make.centerY.equalTo(_artist.mas_centerY);
    }];
    
    [collectIco mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imgView.mas_right).with.offset(5);
        make.height.equalTo(@16);
        make.width.equalTo(@16);
        
        make.centerY.equalTo(_collection.mas_centerY);
    }];
    
    [songIco mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imgView.mas_right).with.offset(5);
        make.height.equalTo(@16);
        make.width.equalTo(@16);
        
        make.centerY.equalTo(_track.mas_centerY);
    }];
}
- (void) prepareForReuse{
   self.imageView.image = nil;
    _track.text = @"";
    _artist.text = @"";
    _collection.text = @"";
}


@end
