//
//  ClothingDetailContoller.m
//  Dragon Fashion
//
//  Created by Edil Ashimov on 7/21/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "ClothingDetailContoller.h"
@interface ClothingDetailContoller ()
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@end

@implementation ClothingDetailContoller

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailLabel.text = self.dragon.signatureClothingItem;
    self.title = self.dragon.fullName;
}



@end
