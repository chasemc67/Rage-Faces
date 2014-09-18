//
//  CustomViewController.h
//  RageFaces2.0
//
//  Created by Chase McCarty on 12-04-01.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) NSMutableArray *customArray;
@property (nonatomic, strong) UIImage *customImage;
@property (nonatomic, strong) NSString *customName;

- (IBAction)chooseImage:(id)sender;

@end
