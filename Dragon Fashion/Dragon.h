//
//  Dragon.h
//  Dragon Fashion
//
//  Created by Edil Ashimov on 7/21/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject
@property NSString *fullName;
@property NSString *signatureClothingItem;

-(instancetype)initWithFullName:(NSString *) name andClothingItem:(NSString *) clothingItem;
@end
