//
//  MemeViewController.m
//  RageFaces2.0
//
//  Created by Chase McCarty on 12-04-01.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MemeViewController.h"

@interface MemeViewController ()

@end

@implementation MemeViewController

@synthesize memeNamesArray;
@synthesize captionButton;

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
    self.memeNamesArray=[[NSArray alloc] initWithObjects:@"Advice Dog",@"All the Things",@"Angry School Boy",@"Annoying Facebook Girl",@"Anti Joke Chicken",@"Art Student Owl",@"Bear Grylls",@"Business Cat",@"Butthurt Dweller",@"Chuck Norris",@"Conspiracy Keanu",@"Courage Wolf",@"First World Problems",@"First World Probelms II",@"Forever Alone",@"Foul Bachalor Frog",@"Futurama Fry",@"Good Guy Greg",@"High Expectations Asian Father",@"I Dont Always",@"Insanity Wolf",@"Internet Husband",@"Jealous Girl",@"Joseph Decreux",@"Karate Kyle",@"Lame Pun Coon",@"Musically Oblivious 8th Grader",@"Okay Guy",@"One Does Not Simply",@"Paranoid Parrot",@"Pedobear",@"Philosoraptor",@"Prepare Yourself",@"Scumbag Steve",@"Slowpoke",@"Socially Awesome Penguin",@"Socially Awkward Penguin",@"Stoner Dog",@"Success Kid",@"Successful Black Man",@"Trollface",@"Vengeance Dad",@"Whyyy???",@"Willy Wonka",@"Y U NO",@"Yaazz",@"Yo Dawg", nil];
    
    UIImage *buttonImage = [[UIImage imageNamed:@"whiteButton.png"]
                            stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
    
    [self.captionButton setBackgroundImage:buttonImage forState:UIControlStateNormal];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.memeNamesArray count];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Memes";
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
   cell.textLabel.text=[self.memeNamesArray objectAtIndex:indexPath.row];
            
    
    UIImage *cellImage;
    cellImage=[UIImage imageNamed:[NSString stringWithFormat:@"%@%@",cell.textLabel.text,@".jpg"]];
    
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
    
    imageNamedString=[[NSString alloc] initWithFormat:@"%@%@",[self.memeNamesArray objectAtIndex:indexPath.row], @".jpg"];
    
    NSData *data = UIImagePNGRepresentation([UIImage imageNamed:imageNamedString]);
    [appPasteBoard setData:data forPasteboardType:@"com.appshop.copyfrom.imagedata"];
    
    //segue in code to meme generator window.
}

- (void)viewDidUnload
{
    [self setMemeNamesArray:nil];
    [self setCaptionButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)addCaption:(id)sender {
}
@end
