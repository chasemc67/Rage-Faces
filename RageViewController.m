//
//  RageViewController.m
//  RageFaces2.0
//
//  Created by Chase McCarty on 12-04-01.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RageViewController.h"

#define kAngryNames 0
#define kDeterminedNames 1
#define kFocusedNames 2
#define kForeverAlone 3
#define kHappy 4
#define kLaugh 5
#define kNeutral 6
#define kPleased 7
#define kRage 8
#define kSad 9
#define kScared 10
#define kSeriously 11
#define kSexy 12
#define kSurprised 13
#define kTroll 14

#define kAllFriends 15
#define kCereal 16
#define kBeard 17
#define kFYeah 18
#define kMilk 19
#define ktransitions 20
#define kVarious 21

#define sectionCount 22

@interface RageViewController ()

@end

@implementation RageViewController

@synthesize angryNamesArray, 
determinedNamesArray, 
focusedNamesArray, 
foreverAloneNamesArray, 
happyNamesArray,
laughNamesArray,
neutralNamesArray,
pleasedNamesArray,
rageNamesArray,
sadNamesArray,
scaredNamesArray,
seriouslyNamesArray,
sexyTimeNamesArray,
surprisedNamesArray,
trollsNamesArray;

@synthesize allFriendsArray,
cerealGuyArray,
beardGuyArray,
fYeahArray,
milkArray,
transitionsArray,
variousArray;



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
    self.angryNamesArray=[[NSArray alloc] initWithObjects:
                          @"Angry",@"Canadian",@"Derrrp",@"Pig",@"RedEyes",@"SideMouth", @"Are You Kidding Me",
                          @"Desk Flip",@"NO", @"Stop it",@"Watching You",@"What Have You Done",@"Whats All This Racket",
                          @"Y U NO", nil];
    
    self.determinedNamesArray=[[NSArray alloc] initWithObjects:
                               @"Challenge Accepted",@"Challenge Completed",@"Challenge Considered",@"Challenge Declined",@"Determined",@"Fair Enough",@"Fap Accepted",@"Feel Like A Ninja",@"Gentlemen",@"Soon Computer", nil];
    
    self.focusedNamesArray=[[NSArray alloc] initWithObjects:
                            @"Concentrated", @"Concentrated 2", @"Phoenix Wright", @"Prrrr", @"Sweaty",nil];
    
    self.foreverAloneNamesArray=[[NSArray alloc] initWithObjects:
                                 @"Computer Alone", @"Forever Alone", @"Forever Alone Excited", @"Forever Dont Care", @"OOh LaLa", nil];
    
    self.happyNamesArray=[[NSArray alloc] initWithObjects:
                          @"EWBTE", @"EWBTE2", @"Female Happy", @"Female Happy 2", @"Happy", @"Hehehe", @"Smile", @"Smile 2", @"So Much Win", @"Spiderp Man", @"Stoned", nil];
    
    self.laughNamesArray=[[NSArray alloc] initWithObjects:
                          @"AwwYeah", @"High", @"Laughing", @"LOL", @"Neil Degrasse Tyson", @"Pfftch", nil];
    
    self.neutralNamesArray=[[NSArray alloc] initWithObjects:
                            @"Bad Poker Face", @"Conflicting Emotions", @"Dude Come On", @"False Story", @"HerpDerp", @"Leave My Presence", @"Not Bad", @"Not Mad", @"Over It", @"Peace Out", @"Poker Face", @"Poker Face 2", @"Slightly Fabricated", @"Thoughtful", @"True Story", @"Wait A Minute", @"Wat", @"What Is Your Point", @"Wild Wild Will", nil];
    
    self.pleasedNamesArray=[[NSArray alloc] initWithObjects:
                            @"Me Gusta", @"Me Gusta Creepy", @"Not Sure If Gusta", @"Puke Rainbows", @"Son Me Gusta", @"Oh Stop It", @"Sweet Jesus", @"Youre The Man", nil];
    
    self.rageNamesArray=[[NSArray alloc] initWithObjects:
                         @"Black Rage", @"Female Rage", @"Female Rage 2", @"Full Panel", @"Original Rage", @"Rage 1", @"Rage 2", @"Shaking", nil];
    
    self.sadNamesArray=[[NSArray alloc] initWithObjects:@"Baww", @"Dejected", @"Eye Bleed", @"Not Okay At All", @"Not Okay", @"Okay Guy", @"Okay I Lied", @"Okay", @"So Close", @"The Saddest", nil];
    
    self.scaredNamesArray=[[NSArray alloc] initWithObjects:
                           @"Gasp", @"Heck No", @"Horror", @"OMG Run Black", @"OMG Run Blonde", @"Shocked", @"Straight Face", nil];
    
    self.seriouslyNamesArray=[[NSArray alloc] initWithObjects:
                              @"BLack", @"Blonde", @"Blond 2", @"Brunette", @"Face Palm", @"Hip", @"Jackie Chan", @"Long Black Hair 1", @"Long Black Hair 2", @"Nothing To Do Here", @"Oh God Why", @"What", @"You Dont Say", nil];
    self.sexyTimeNamesArray=[[NSArray alloc] initWithObjects:
                             @"FapFap", @"Gay", @"Girl FapFap", nil];
    
    self.surprisedNamesArray=[[NSArray alloc] initWithObjects:
                              @"Bwah", @"Great Scott", @"Huh", @"Mother of God", @"Mouth Open", @"Surprised", @"Watch Out Guys", @"What You Did There", @"Why With Hand", nil];
    
    self.trollsNamesArray=[[NSArray alloc] initWithObjects:
                           @"Big Grin", @"Asian", @"Baby", @"Devil", @"Excited", @"Granny", @"Melvin", @"Sad", @"Troll Dad Full", @"Troll Dad Jump", @"Troll Dad", @"Troll Face", @"Troll", nil];
    
    self.allFriendsArray=[[NSArray alloc] initWithObjects:
                          @"All The Things", @"Chuck Testa", @"Clean All The Things", @"Never Alone", @"None of the Things", @"Pedobear", @"PedoSeal", @"Scumbag Steve Hat", @"Socially Awkward Penguin", @"Whut", nil];
    
    self.cerealGuyArray=[[NSArray alloc] initWithObjects:
                         @"Beer Guy", @"Cereal Guy", @"Cereal Spitting", @"Newspaper Guy", @"Newspaper Guy Tear", nil];
    
    self.beardGuyArray=[[NSArray alloc] initWithObjects:
                        @"Black Guy Beaten", @"Black Guy", @"Epic Beard Guy", nil];
    
    self.fYeahArray=[[NSArray alloc] initWithObjects:
                     @"Clean Fuck Yea", @"Close Enough", @"Freddie", @"Fuck Yea", @"Fuck Yea Female", @"F Yea Star", @"GTFO", @"Haters Gonna Hate", @"Lady Freddie", @"Well Done",  nil];
    
    self.milkArray=[[NSArray alloc] initWithObjects:
                    @"Female Milk", @"Milk", nil];
    
    self.transitionsArray=[[NSArray alloc] initWithObjects:
                           @"Later", @"Many months", @"Meanwhile", @"Much later", @"The Next Day", @"Three Days Later", @"Three Weeks Later", @"Twelve Seconds Later", @"Two Hours Later", nil];
    
    self.variousArray=[[NSArray alloc] initWithObjects:
                       @"Epic Fail Guy", @"French", @"Genius", @"gentlemen", @"Grandma", @"Hitler", @"I am Disappoint", @"Like a Lady", @"Reddit Alien", @"Retard Dog", @"Shoop", nil];
    
    
    

    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return sectionCount;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) 
    {
        case kAngryNames:
            return [self.angryNamesArray count];
        case kDeterminedNames:
            return [self.determinedNamesArray count];
        case kFocusedNames:
            return [self.focusedNamesArray count];
        case kForeverAlone:
            return [self.foreverAloneNamesArray count];
        case kHappy:
            return [self.happyNamesArray count];
        case kLaugh:
            return [self.laughNamesArray count];
        case kNeutral:
            return [self.neutralNamesArray count];
        case kPleased:
            return [self.pleasedNamesArray count];
        case kRage:
            return [self.rageNamesArray count];
        case kSad:
            return [self.sadNamesArray count];
        case kScared:
            return [self.scaredNamesArray count];
        case kSeriously:
            return [self.seriouslyNamesArray count];
        case kSexy:
            return [self.sexyTimeNamesArray count];
        case kSurprised:
            return [self.surprisedNamesArray count];
        case kTroll:
            return [self.trollsNamesArray count];
        case kAllFriends:
            return [self.allFriendsArray count];
        case kCereal:
            return [self.cerealGuyArray count];
        case kBeard:
            return [self.beardGuyArray count];
        case kFYeah:
            return [self.fYeahArray count];
        case kMilk:
            return [self.milkArray count];
        case ktransitions:
            return [self.transitionsArray count];
        case kVarious:
            return [self.variousArray count];
            
        default:
            return 0;
    }
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) 
    {
        case kAngryNames:
            return @"Angry";
        case kDeterminedNames:
            return @"Determined";
        case kFocusedNames:
            return @"Focused";
        case kForeverAlone:
            return @"Forever Alone";
        case kHappy:
            return @"Happy";
        case kLaugh:
            return @"Laugh";
        case kNeutral:
            return @"Neutral";
        case kPleased:
            return @"Pleased";
        case kRage:
            return @"Rage";
        case kSad:
            return @"Sad";
        case kScared:
            return @"Scared";
        case kSeriously:
            return @"Seriously";
        case kSexy:
            return @"Sexy Times";
        case kSurprised:
            return @"Surprised";
        case kTroll:
            return @"Trolls";
        case kAllFriends:
            return @"Friends";
        case kCereal:
            return @"Cereal/Newspaper Guy";
        case kBeard:
            return @"Beard Guy";
        case kFYeah:
            return @"F*** Yeah";
        case kMilk:
            return @"Milk";
        case ktransitions:
            return @"Transitions";
        case kVarious:
            return @"Various";

        default:
            return @"Uknown";
            
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    
    switch (indexPath.section) 
    {
            
        case kAngryNames:
            cell.textLabel.text=[self.angryNamesArray objectAtIndex: indexPath.row];
            break;
        case kDeterminedNames:
            cell.textLabel.text=[self.determinedNamesArray objectAtIndex: indexPath.row];
            break;
        case kFocusedNames:
            cell.textLabel.text=[self.focusedNamesArray objectAtIndex: indexPath.row];
            break;
        case kForeverAlone:
            cell.textLabel.text=[self.foreverAloneNamesArray objectAtIndex: indexPath.row];
            break;
        case kHappy:
            cell.textLabel.text=[self.happyNamesArray objectAtIndex: indexPath.row];
            break;
        case kLaugh:
            cell.textLabel.text=[self.laughNamesArray objectAtIndex: indexPath.row];
            break;
        case kNeutral:
            cell.textLabel.text=[self.neutralNamesArray objectAtIndex: indexPath.row];
            break;
        case kPleased:
            cell.textLabel.text=[self.pleasedNamesArray objectAtIndex: indexPath.row];
            break;
        case kRage:
            cell.textLabel.text=[self.rageNamesArray objectAtIndex: indexPath.row];
            break;
        case kSad:
            cell.textLabel.text=[self.sadNamesArray objectAtIndex: indexPath.row];
            break;
        case kScared:
            cell.textLabel.text=[self.scaredNamesArray objectAtIndex: indexPath.row];
            break;
        case kSeriously:
            cell.textLabel.text=[self.seriouslyNamesArray objectAtIndex: indexPath.row];
            break;
        case kSexy:
            cell.textLabel.text=[self.sexyTimeNamesArray objectAtIndex: indexPath.row];
            break;
        case kSurprised:
            cell.textLabel.text=[self.surprisedNamesArray objectAtIndex: indexPath.row];
            break;
        case kTroll:
            cell.textLabel.text=[self.trollsNamesArray objectAtIndex: indexPath.row];
            break;
        case kAllFriends:
            cell.textLabel.text=[self.allFriendsArray objectAtIndex: indexPath.row];
            break;
        case kCereal:
            cell.textLabel.text=[self.cerealGuyArray objectAtIndex: indexPath.row];
            break;
        case kBeard:
            cell.textLabel.text=[self.beardGuyArray objectAtIndex: indexPath.row];
            break;
        case kFYeah:
            cell.textLabel.text=[self.fYeahArray objectAtIndex: indexPath.row];
            break;
        case kMilk:
            cell.textLabel.text=[self.milkArray objectAtIndex: indexPath.row];
            break;
        case ktransitions:
            cell.textLabel.text=[self.transitionsArray objectAtIndex: indexPath.row];
            break;
        case kVarious:
            cell.textLabel.text=[self.variousArray objectAtIndex: indexPath.row];
            break;
            
            
            
        default:
            cell.textLabel.text=@"Unknown";
            
            return cell;
    }
    
    UIImage *cellImage;
    cellImage=[UIImage imageNamed:[NSString stringWithFormat:@"%@%@",cell.textLabel.text,@".png"]];
   
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

    
     UIPasteboard *appPasteBoard = [UIPasteboard pasteboardWithName:@"CopyFrom" create:YES];
     appPasteBoard.persistent = YES;
    
    
    
    switch (indexPath.section){
        
        case kAngryNames:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.angryNamesArray objectAtIndex:indexPath.row], @".png"];
            break;
        case kDeterminedNames:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.determinedNamesArray objectAtIndex:indexPath.row], @".png"];            
            break;
        case kFocusedNames:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.focusedNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kForeverAlone:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.foreverAloneNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kHappy:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.happyNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kLaugh:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.laughNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kNeutral:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.neutralNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kPleased:
           imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.pleasedNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kRage:
           imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.rageNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kSad:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.sadNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kScared:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.scaredNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kSeriously:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.seriouslyNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kSexy:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.sexyTimeNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kSurprised:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.surprisedNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kTroll:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.trollsNamesArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kAllFriends:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.allFriendsArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kCereal:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.cerealGuyArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kBeard:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.beardGuyArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kFYeah:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.fYeahArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case kMilk:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.milkArray objectAtIndex:indexPath.row], @".png"]; 
            break;
        case ktransitions:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.transitionsArray objectAtIndex:indexPath.row], @".png"];             break;
        case kVarious:
            imageNamedString=[[NSString alloc]initWithFormat:@"%@%@",[self.variousArray objectAtIndex:indexPath.row], @".png"];             break;

            
            
            
        default:
            break;
            
            
    }
     
     NSData *data = UIImagePNGRepresentation([UIImage imageNamed:imageNamedString]);
     [appPasteBoard setData:data forPasteboardType:@"com.appshop.copyfrom.imagedata"];
    
}

- (void)viewDidUnload
{
    [self setAngryNamesArray:nil];
    [self setDeterminedNamesArray:nil];
    [self setFocusedNamesArray:nil];
    [self setForeverAloneNamesArray:nil];
    [self setHappyNamesArray:nil];
    [self setLaughNamesArray:nil];
    [self setNeutralNamesArray:nil];
    [self setPleasedNamesArray:nil];
    [self setRageNamesArray:nil];
    [self setSadNamesArray:nil];
    [self setScaredNamesArray:nil];
    [self setSeriouslyNamesArray:nil];
    [self setSexyTimeNamesArray:nil];
    [self setSurprisedNamesArray:nil];
    [self setTrollsNamesArray:nil];
    
    [self setAllFriendsArray:nil];
    [self setCerealGuyArray:nil];
    [self setBeardGuyArray:nil];
    [self setFYeahArray:nil];
    [self setMilkArray:nil];
    [self setTransitionsArray:nil];
    [self setVariousArray:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation = UIInterfaceOrientationPortrait);
}

@end
