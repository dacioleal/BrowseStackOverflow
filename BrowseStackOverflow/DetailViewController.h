//
//  DetailViewController.h
//  BrowseStackOverflow
//
//  Created by Dacio Leal Rodriguez on 16/4/16.
//  Copyright © 2016 Dacio Leal Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

