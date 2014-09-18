//
//  CustomViewController.m
//  RageFaces2.0
//
//  Created by Chase McCarty on 12-04-01.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

@synthesize customArray;
@synthesize customImage;
@synthesize customName;



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
    //init with objects that are saved
    self.customArray=[[NSMutableArray alloc] initWithObjects: nil];    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.customArray count];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Custom";
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text=[[self.customArray objectAtIndex:indexPath.row]objectForKey:@"name"];
    
    
    UIImage *cellImage;
    cellImage=[[self.customArray objectAtIndex:indexPath.row]objectForKey:@"image"];
    
    cell.imageView.image=cellImage;
    
    cell.textLabel.textColor = [UIColor whiteColor];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [cell setBackgroundColor:[UIColor scrollViewTexturedBackgroundColor]];
    [tableView setSeparatorColor:[UIColor orangeColor]];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *imageNamedString;
    
    UIPasteboard *appPasteBoard = [UIPasteboard pasteboardWithName: @"CopyFrom" create:YES];
    appPasteBoard.persistent = YES;
    
    imageNamedString=[[NSString alloc] initWithFormat:@"%@%@",[self.customArray objectAtIndex:indexPath.row], @".jpg"];
    
    NSData *data = UIImagePNGRepresentation([UIImage imageNamed:imageNamedString]);
    [appPasteBoard setData:data forPasteboardType:@"com.appshop.copyfrom.imagedata"];
    
    //segue in code to meme generator window.
}



- (void)viewDidUnload
{
    [self setCustomArray:nil];
    [self setCustomImage:nil];
    [self setCustomName:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)chooseImage:(id)sender {
    UIImagePickerController *imagePicker;
    imagePicker = [[UIImagePickerController alloc]init];
    
    imagePicker.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.delegate = self;
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [self presentModalViewController:imagePicker animated:YES];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [self dismissModalViewControllerAnimated:YES];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [self dismissModalViewControllerAnimated:YES];
    self.customImage=[info objectForKey:UIImagePickerControllerOriginalImage];
    
    
    //popup to add name
     
     UIAlertView *alertDialog;
     alertDialog = [[UIAlertView alloc] 
     initWithTitle: @"Picture Name" 
     message:@"Please enter the name for your image:" 
     delegate: self 
     cancelButtonTitle: @"Done"
     otherButtonTitles: nil];
     alertDialog.alertViewStyle=UIAlertViewStylePlainTextInput;
     [alertDialog show];
    
   //transfer string from textfield to pre determined string
    
    
    self.customName=[[alertDialog textFieldAtIndex:0] text];
    
    [customArray addObject:[[NSDictionary alloc] 
                            initWithObjectsAndKeys:customName, @"name", customImage, @"image", nil]];
    
    

    /* 
    //core Data image store
    
    //save array contents to core data using direct file system
    // store each image separate findng index from customArray.count
    // keep in mind we dont want to create a file, we want to create a folder named "Custom Images"
    //or maybe the files should be image files instead of string files.
    
    NSString *docDir = [NSSearchPathForDirectoriesInDomains(
                                                            NSDocumentDirectory,
                                                            NSUserDomainMask, YES) 
                        objectAtIndex: self.customArray.count];
    
    
    NSString *imageFile = [docDir 
                            stringByAppendingPathComponent:
                            @"image"];
    
    NSFileHandle *fileHandle = [NSFileHandle 
                                fileHandleForUpdatingAtPath:imageFile];
    
    //write data
    
    
    
    [fileHandle closeFile];
    
    
    //dont forget to import core data
     */
}


    

@end
