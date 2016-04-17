//
//  Topic.m
//  BrowseStackOverflow
//
//  Created by Dacio Leal Rodriguez on 17/4/16.
//  Copyright © 2016 Dacio Leal Rodriguez. All rights reserved.
//

#import "Topic.h"
#import "Question.h"

@implementation Topic

- (instancetype)init {
    self = [super init];
    if (self) {
        _name = @"unknown";
        _tag = @"unknown";
        _questions = [NSArray array];
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name andTag:(NSString *)tag {
    self = [super init];
    if (self) {
        _name = name;
        _tag = tag;
        _questions = [NSArray array];
    }
    return self;
    
}

- (NSArray *)recentQuestions {
    return [self sortQuestionLatestFirst:self.questions];
}

- (void)addQuestion:(Question *)question {
    NSArray *newQuestions = [self.questions arrayByAddingObject:question];
    if ([newQuestions count] > 20) {
        newQuestions = [self sortQuestionLatestFirst:newQuestions];
        newQuestions = [newQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }
    self.questions = newQuestions;
}

- (NSArray *)sortQuestionLatestFirst:(NSArray *)questions {
    return [questions sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        Question *q1 = (Question *) obj1;
        Question *q2 = (Question *) obj2;
        return [q2.date compare:q1.date];
    }];
}

@end
