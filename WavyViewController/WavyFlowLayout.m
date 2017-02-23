//
//  WavyFlowLayout.m
//  WavyViewController
//
//  Created by Sofia Knezevic on 2017-02-23.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "WavyFlowLayout.h"

//@interface WavyFlowLayout()
//
//@property NSMutableArray *savedAttributes;
//
//@end

@implementation WavyFlowLayout

- (void)prepareLayout
{
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    
    self.minimumInteritemSpacing = CGFLOAT_MAX;
    
    
    
}

- (CGSize)collectionViewContentSize
{
   CGSize sizeOfCollectionView = [self collectionView].contentSize;
    
   return sizeOfCollectionView;
    
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] initWithArray:superAttrs];
    
    
    for (UICollectionViewLayoutAttributes *attributes in newAttrs) {
        
        CGFloat randomY = arc4random_uniform(600);
        
        attributes.frame = CGRectMake(attributes.frame.origin.x, randomY, self.itemSize.width, self.itemSize.height);
        
        
    }
    
    return newAttrs;
    
    
}

@end
