//
//  Level.h
//  FlyingFeathers
//
//  Created by Garrett Hunyadi on 6/16/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface Layer : CCNode {
    CCNode* _physicsNode;
    CCNode* _launcher;
}


@end
