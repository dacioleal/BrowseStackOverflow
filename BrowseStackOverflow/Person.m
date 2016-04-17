//
//  Person.m
//  BrowseStackOverflow
//
//  Created by Dacio Leal Rodriguez on 17/4/16.
//  Copyright © 2016 Dacio Leal Rodriguez. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name andAvatarLocation:(NSString *)location {
    self = [super init];
    if (self) {
        _name = name;
        _avatarURL = [NSURL URLWithString:location];
    }
    return self;
}

@end
