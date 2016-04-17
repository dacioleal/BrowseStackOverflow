//
//  QuestionTests.m
//  BrowseStackOverflow
//
//  Created by Dacio Leal Rodriguez on 17/4/16.
//  Copyright © 2016 Dacio Leal Rodriguez. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Question.h"

@interface QuestionTests : XCTestCase

@property (strong, nonatomic) Question *question;

@end

@implementation QuestionTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.question = [[Question alloc] init];
    self.question.date = [NSDate distantPast];
    self.question.title = @"Do iPhones also dream of electric sheeps?";
    self.question.score = 42;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    self.question = nil;
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

- (void)testQuestionHasADate {
    NSDate *testDate = [NSDate distantPast];
    self.question.date = testDate;
    XCTAssertEqualObjects(self.question.date, testDate, @"Question needs to provide its date");
}

- (void)testQuestionsKeepScore {
    XCTAssertEqual(self.question.score, 42, @"Questions need a numeric score");
}

- (void)testQuestionHasATitle {
    XCTAssertEqualObjects(self.question.title, @"Do iPhones also dream of electric sheeps?", @"Questions should known its title");
}


@end











