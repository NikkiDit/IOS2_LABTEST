//
//  Icon.m
//  IPhoneScreen
//
//  Created by Adenike Olatunji on 05/05/2015.
//
//

#import "Icon.h"

@implementation Icon

- (id) initWithName:(NSString *)iconName {
    self = [super init];
    if(!self){return nil;}
    
    _iconName = iconName;
    
    return self;
    
}

@end
