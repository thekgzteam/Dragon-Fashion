//
//  Dragon.m
//  Dragon Fashion
//
//  Created by Edil Ashimov on 7/21/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

-(NSString *) description {
    return [NSString stringWithFormat:@"%@ is never fully dressed without %@", self.
            fullName, self.signatureClothingItem];
}

-(instancetype)initWithFullName:(NSString *) name andClothingItem:(NSString *) clothingItem {
    self =[super init];
    if (self) {
        self.fullName = name;
        self.signatureClothingItem = clothingItem; }
    return self;
    
}
@end
