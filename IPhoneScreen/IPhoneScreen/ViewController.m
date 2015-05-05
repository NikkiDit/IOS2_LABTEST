//
//  ViewController.m
//  IPhoneScreen
//
//  Created by Adenike Olatunji on 05/05/2015.
//
//

#import "ViewController.h"
#import "Icon.h"

@interface ViewController ()
@property (nonatomic,strong) NSMutableArray *iconSet;
@property (nonatomic,strong) NSArray *iconNames;

@property UIView *icon;

@end

const CGFloat IconWidth = 60.0f;   // this includes drop shadows
const CGFloat IconHeight = 60.0f;
const int IconCOUNT = 32;

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupIcon];
    
    [self createScreenLayout];
   
}

- touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    
    [UIView animateWithDuration:2.0
                          delay:0.0
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         
                         _icon.center = location;
                     } completion:nil];
    
    return nil;
}
-(void)setupIcon{
    // create the card deck array
   _iconNames = @[@"Messages", @"Calender", @"Photos",@"Camera",@"Weather", @"Clock", @"Maps", @"Videos", @"Notes", @"Reminders", @"Stocks", @"Game Center", @"Newsstand", @"iTunes Store",@"App Store",@"Passbook",@"Compass",@"Setting"];
    
   
    
}


- (void)createScreenLayout{
   int b =4;
   int x = 17;
    //int j=0;
    int k =0;
    for (int i=1; i<=4; i++) {
        
        int y = 50;
       
        
        
        for (int j=0; j<=b; j++) {
            CGRect  viewRect = CGRectMake(x, y, IconWidth, IconHeight);
            _icon = [[UIView alloc] initWithFrame:viewRect];
            [_icon setContentMode:UIViewContentModeCenter];
            _icon.clipsToBounds = YES;
            _icon.layer.cornerRadius = 10;
            _icon.layer.borderWidth = 1.0f;
            _icon.layer.borderColor =[UIColor grayColor].CGColor;
            
            
            UILabel *iconLabel = [[UILabel alloc] initWithFrame:CGRectMake(2,2,50,15)];
            
           
            iconLabel.text = [_iconNames objectAtIndex: j];
            
            CGAffineTransform labelSize = CGAffineTransformMakeScale(0.6, 0.6);
            iconLabel.transform = labelSize;
            
            
            
            [_icon addSubview:iconLabel];
            
            [self.view addSubview:_icon];
            if (k< [_iconNames count]){
            k++;
            }
        if(i<5){
            y =y+25+IconHeight;
        }
        
      }
         x=x+17+IconWidth;
         
        
    }
}

@end
