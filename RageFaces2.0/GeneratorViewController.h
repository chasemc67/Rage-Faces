//
//  GeneratorViewController.h
//  RageFaces2.0
//
//  Created by Chase McCarty on 12-04-06.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GeneratorViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imagePreview;

@property (strong, nonatomic) IBOutlet UIButton *saveToPhotos;
@property (strong, nonatomic) IBOutlet UIButton *saveToClipboard;

@property (strong, nonatomic) IBOutlet UITextField *topCaption;
@property (strong, nonatomic) IBOutlet UITextField *bottomCaption;

@property (strong, nonatomic) IBOutlet UILabel *topCaptionLabel;
@property (strong, nonatomic) IBOutlet UILabel *bottomCaptionLabel;


- (IBAction)saveToPhotos:(id)sender;
- (IBAction)saveToClipboard:(id)sender;
- (IBAction)updateImagePreview:(id)sender;

- (IBAction)dismissModalView:(id)sender;
- (IBAction)hideKeyboard:(id)sender;

@end
