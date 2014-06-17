//
//  Level.m
//  FlyingFeathers
//
//  Created by Garrett Hunyadi on 6/16/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Layer.h"

@implementation Layer
-(void)launchBird:(id)sender {
    float rotationInRadians = CC_DEGREES_TO_RADIANS(_launcher.rotation);
    
    CGPoint directionVector = ccp(sinf(rotationInRadians), cosf(rotationInRadians));
    CGPoint ballOffset = ccpMult(directionVector, 50);
    
    CCNode* ball = [CCBReader load:@"Bird"];
    ball.position = ccpAdd(_launcher.position, ballOffset);
    
    [_physicsNode addChild:ball];
    CGPoint force = ccpMult(directionVector, 50000);
    
    [ball.physicsBody applyForce:force];
}
@end
