//
//  TopicTests.m
//  BrowseStackOverflow
//
//  Created by Dacio Leal Rodriguez on 17/4/16.
//  Copyright © 2016 Dacio Leal Rodriguez. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Topic.h"
#import "Question.h"

@interface TopicTests : XCTestCase

@property (strong, nonatomic) Topic *topic;

@end

@implementation TopicTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    Topic *topic = [[Topic alloc] initWithName:@"iPhone" andTag:@"iphone"];
    self.topic = topic;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    self.topic = nil;
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testTopicExists {
    XCTAssertNotNil(self.topic, @"Should be able to create a new topic instance");
}

- (void)testThatTopicCanBeNamed {
    XCTAssertEqualObjects(self.topic.name, @"iPhone", @"The Topic should have the name I gave it");
}

- (void)testThatTopicHasATag {
    XCTAssertEqualObjects(self.topic.tag, @"iphone", @"Topics need to have tags");
}

- (void)testForInitiallyEmptyQuestionList {
    XCTAssertEqual([[self.topic recentQuestions] count], (NSUInteger)0, @"No questions added yet, count should be zero");
}

- (void)testAddingAQuestionToTheList {
    Question *question = [[Question alloc] init];
    [self.topic addQuestion:question];
    XCTAssertEqual([[self.topic recentQuestions] count], (NSUInteger)1, @"Add a question, and the count of question should go up");
}

- (void)testForAListOfQuestions {
    XCTAssertTrue([[self.topic recentQuestions] isKindOfClass:[NSArray class]], @"Topics should provide a list of questions");
}

- (void)testQuestionsAreListedChronologically {
    Question *q1 = [[Question alloc] init];
    q1.date = [NSDate distantPast];
    
    Question *q2 = [[Question alloc] init];
    q2.date = [NSDate distantFuture];
    
    [self.topic addQuestion:q1];
    [self.topic addQuestion:q2];
    
    NSArray *questions = [self.topic recentQuestions];
    Question *listedFirst = [questions objectAtIndex:0];
    Question *listedSecond = [questions objectAtIndex:1];
    
    XCTAssertEqualObjects([listedFirst.date laterDate:listedSecond.date], listedFirst.date, @"The later question should appear first in the list");
}

- (void)testLimitOfTwentyQuestions {
    for (int i=0; i < 25; i++) {
        Question *question = [[Question alloc] init];
        [self.topic addQuestion:question];
    }
    XCTAssertTrue(([[self.topic recentQuestions] count] < 21), @"There should never be more than twenty questions");
}
@end


























