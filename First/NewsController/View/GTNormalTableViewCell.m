//
//  GTNormalTableViewCell.m
//  First
//
//  Created by 任国良 on 2019/12/24.
//  Copyright © 2019 rengl. All rights reserved.
//

#import "GTNormalTableViewCell.h"

@interface GTNormalTableViewCell ()

@property(nonatomic, strong, readwrite) UILabel *titleLable;
@property(nonatomic, strong, readwrite) UILabel *sourceLabe;
@property(nonatomic, strong, readwrite) UILabel *commentLable;
@property(nonatomic, strong, readwrite) UILabel *timeLable;

@property(nonatomic, strong, readwrite) UIImageView *rightImageView;

@property(nonatomic, strong, readwrite) UIButton *deleteButton;

@end

@implementation GTNormalTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self.contentView addSubview:({
            self.titleLable = [[UILabel alloc] initWithFrame:CGRectMake(20, 15, 300, 50)];
            self.titleLable.font = [UIFont systemFontOfSize:12];
            self.titleLable.textColor = [UIColor blackColor];
            self.titleLable;
        })];
        
        [self.contentView addSubview:({
            self.sourceLabe = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 50, 20)];
            self.sourceLabe.font = [UIFont systemFontOfSize:12];
            self.sourceLabe.textColor = [UIColor grayColor];
            self.sourceLabe;
        })];
        
        [self.contentView addSubview:({
            self.commentLable = [[UILabel alloc] initWithFrame:CGRectMake(100, 80, 50, 50)];
            self.commentLable.font = [UIFont systemFontOfSize:12];
            self.commentLable.textColor = [UIColor grayColor];
            self.commentLable;
        })];
        
        [self.contentView addSubview:({
            self.timeLable = [[UILabel alloc] initWithFrame:CGRectMake(150, 80, 50, 50)];
            self.timeLable.font = [UIFont systemFontOfSize:12];
            self.timeLable.textColor = [UIColor grayColor];
            self.timeLable;
        })];
        
        [self.contentView addSubview:({
            self.rightImageView = [[UIImageView alloc] initWithFrame:CGRectMake(330, 15, 70, 70)];
            self.rightImageView.contentMode = UIViewContentModeScaleAspectFit;
            self.rightImageView;
        })];
        
        [self.contentView addSubview:({
            self.deleteButton = [[UIButton alloc] initWithFrame:CGRectMake(290, 80, 30, 20)];
            [self.deleteButton setTitle:@"x" forState:UIControlStateNormal];
            [self.deleteButton setTitle:@"v" forState:UIControlStateHighlighted];
            [self.deleteButton addTarget:self action:@selector(deleteButtonClick) forControlEvents:(UIControlEventTouchUpInside)];
            self.deleteButton.backgroundColor = [UIColor grayColor];
            
            self.deleteButton.layer.cornerRadius = 10;
            self.deleteButton.layer.masksToBounds = YES;
            
            self.deleteButton.layer.borderColor = [UIColor blueColor].CGColor;
            self.deleteButton.layer.borderWidth = 2;
            self.deleteButton;
        })];
    }
    return self;
}

- (void)layoutTableViewCell {
    self.titleLable.text = @"极客时间iOS开发";
    self.sourceLabe.text = @"极客时间";
    [self.sourceLabe sizeToFit];
    self.commentLable.text = @"188评论";
    [self.commentLable sizeToFit];
    self.commentLable.frame = CGRectMake(self.sourceLabe.frame.origin.x + self.sourceLabe.frame.size.width + 15 , self.commentLable.frame.origin.y, self.commentLable.frame.size.width, self.commentLable.frame.size.height);
    self.timeLable.text = @"三分钟前";
    [self.timeLable sizeToFit];
    
    self.rightImageView.image = [UIImage imageNamed:@"1200px-Apple_logo_black.svg.png"];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void) deleteButtonClick{
    if(self.delegate && [self.delegate respondsToSelector:@selector(tableViewCell:clickDeleteButton:)]){
        [self.delegate tableViewCell:self clickDeleteButton:self.deleteButton];
    }
}

@end
