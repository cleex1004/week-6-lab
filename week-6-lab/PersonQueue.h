//
//  PersonQueue.h
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonQueue <NSObject>

@required
-(void)enqueue:(Person)person;
-(Person)dequeue;

@optional
-(int)count;

@end



