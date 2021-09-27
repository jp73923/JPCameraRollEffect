//
//  EndlessTableView.h
//  Jay's Mac Mini
//
//  Created by Anıl Oruç on 06/05/14.
//  Copyright (c) 2014 Jay's Mac Mini All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EndlessTableView : UITableView

@property(nonatomic)BOOL enableEndlessScrolling;

@property(nonatomic)BOOL enableAutoScrolling;

@property(nonatomic)BOOL upToDown;

@property(nonatomic)CGFloat autoScrollValue;

@property(nonatomic)CGFloat differenceRateValue;

@property(nonatomic,weak) EndlessTableView *attachedTableView;

@end
