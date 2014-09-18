//
//  RageViewController.h
//  RageFaces2.0
//
//  Created by Chase McCarty on 12-04-01.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RageViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

//emotions
@property (nonatomic, strong) NSArray *angryNamesArray;
@property (nonatomic, strong) NSArray *determinedNamesArray;
@property (nonatomic, strong) NSArray *focusedNamesArray;
@property (nonatomic, strong) NSArray *foreverAloneNamesArray;
@property (nonatomic, strong) NSArray *happyNamesArray;
@property (nonatomic, strong) NSArray *laughNamesArray;
@property (nonatomic, strong) NSArray *neutralNamesArray;
@property (nonatomic, strong) NSArray *pleasedNamesArray;
@property (nonatomic, strong) NSArray *rageNamesArray;
@property (nonatomic, strong) NSArray *sadNamesArray;
@property (nonatomic, strong) NSArray *scaredNamesArray;
@property (nonatomic, strong) NSArray *seriouslyNamesArray;
@property (nonatomic, strong) NSArray *sexyTimeNamesArray;
@property (nonatomic, strong) NSArray *surprisedNamesArray;
@property (nonatomic, strong) NSArray *trollsNamesArray;

@property (nonatomic, strong) NSArray *allFriendsArray;
@property (nonatomic, strong) NSArray *cerealGuyArray;
@property (nonatomic, strong) NSArray *beardGuyArray;
@property (nonatomic, strong) NSArray *fYeahArray;
@property (nonatomic, strong) NSArray *milkArray;
@property (nonatomic, strong) NSArray *transitionsArray;
@property (nonatomic, strong) NSArray *variousArray;

@end
