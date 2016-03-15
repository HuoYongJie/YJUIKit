//
//  FWGridViewRow.m
//  FMGridViewDemo

//


#import "FWGridViewRow.h"

@implementation FWGridViewRow

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.selectionStyle = UITableViewCellSelectionStyleNone;
		self.userInteractionEnabled = YES;
        self.backgroundColor=[UIColor grayColor];//设置cell的背景颜色
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
