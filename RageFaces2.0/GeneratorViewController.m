//
//  GeneratorViewController.m
//  RageFaces2.0
//
//  Created by Chase McCarty on 12-04-06.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GeneratorViewController.h"

@interface GeneratorViewController ()

@end

@implementation GeneratorViewController
@synthesize imagePreview;
@synthesize saveToPhotos;
@synthesize saveToClipboard;
@synthesize topCaption;
@synthesize bottomCaption;
@synthesize topCaptionLabel;
@synthesize bottomCaptionLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    UIPasteboard *appPasteBoard = [UIPasteboard pasteboardWithName:@"CopyFrom" create:YES];
	NSData *data = [appPasteBoard dataForPasteboardType:@"com.appshop.copyfrom.imagedata"];
	imagePreview.image = [UIImage imageWithData:data];
    
    UIImage *buttonImage = [[UIImage imageNamed:@"whiteButton.png"]
                            stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
    
    [self.saveToPhotos setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [self.saveToClipboard setBackgroundImage:buttonImage forState:UIControlStateNormal];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setImagePreview:nil];
    [self setTopCaption:nil];
    [self setBottomCaption:nil];
    [self setSaveToClipboard:nil];
    [self setSaveToPhotos:nil];
    [self setTopCaptionLabel:nil];
    [self setBottomCaptionLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)saveToPhotos:(id)sender {
}

- (IBAction)saveToClipboard:(id)sender {
}

- (IBAction)updateImagePreview:(id)sender {
    
    topCaptionLabel.text = topCaption.text;
    bottomCaptionLabel.text = bottomCaption.text;
    
}

- (IBAction)dismissModalView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)hideKeyboard:(id)sender {
    [self.topCaption resignFirstResponder];
    [self.bottomCaption resignFirstResponder];
}

@end
