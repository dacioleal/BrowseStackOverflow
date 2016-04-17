//
//  Topic.h
//  BrowseStackOverflow
//
//  Created by Dacio Leal Rodriguez on 17/4/16.
//  Copyright © 2016 Dacio Leal Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Question;

@interface Topic : NSObject

@property (strong, nonatomic, readonly) NSString *name;
@property (strong, nonatomic, readonly) NSString *tag;
@property (strong, nonatomic) NSArray *questions;

- (instancetype)initWithName:(NSString *)name andTag:(NSString *)tag;
- (NSArray *)recentQuestions;
- (void)addQuestion:(Question *)question;
@end
