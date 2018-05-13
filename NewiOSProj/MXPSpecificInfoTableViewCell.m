//
//  MXPSpecificInfoTableViewCell.m
//  NewiOSProj
//
//  Created by Mr.M on 2017/10/22.
//  Copyright © 2017年 Mr.M. All rights reserved.
//

#import "MXPSpecificInfoTableViewCell.h"

@interface MXPSpecificInfoTableViewCell()

@property (strong, nonatomic) IBOutlet UILabel *kindLabel;
@property (strong, nonatomic) IBOutlet UILabel *particularLabel;
@property (strong, nonatomic) IBOutlet UILabel *moneyLabel;


@end

@implementation MXPSpecificInfoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
