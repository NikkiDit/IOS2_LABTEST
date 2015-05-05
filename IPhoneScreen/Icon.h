//
//  Icon.h
//  IPhoneScreen
//
//  Created by Adenike Olatunji on 05/05/2015.
//
//

#import <Foundation/Foundation.h>

@interface Icon : NSObject
@property (nonatomic, retain) NSString *iconName;
@property (nonatomic,retain) UIColor *iconColor;
@property (nonatomic,retain) UIImage *iconImage;

-(id)initWithName:(NSString *) iconName ;

@end
