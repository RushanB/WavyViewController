//
//  WavyFlowLayout.m
//  WavyViewController
//
//  Created by Sofia Knezevic on 2017-02-23.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

- (void)prepareLayout
{
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    
    self.minimumInteritemSpacing = CGFLOAT_MAX;
    
}

@end
