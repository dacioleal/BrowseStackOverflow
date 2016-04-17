//
//  Question.h
//  BrowseStackOverflow
//
//  Created by Dacio Leal Rodriguez on 17/4/16.
//  Copyright © 2016 Dacio Leal Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) NSString *title;
@property (nonatomic) NSInteger score;

@end
