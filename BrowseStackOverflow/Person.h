//
//  Person.h
//  BrowseStackOverflow
//
//  Created by Dacio Leal Rodriguez on 17/4/16.
//  Copyright © 2016 Dacio Leal Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic, readonly) NSString *name;
@property (strong, nonatomic, readonly) NSURL *avatarURL;

- (instancetype)initWithName:(NSString *)name andAvatarLocation:(NSString *)location;

@end
