//
//  PdCollectionViewImageSudokuLayout.m
//  BLLSudokuImageLayout
//
//  Created by light_bo on 2017/7/29.
//  Copyright © 2017年 light_bo. All rights reserved.
//

#import "BLLCollectionViewImageSudokuLayout.h"
#import "BLLSudokuItemLayoutConfigurator.h"
#import "UIView+BLLSudokuImageLayout.h"

@interface BLLCollectionViewImageSudokuLayout ()

@property (nonatomic, strong) NSMutableArray *attrsArray;

@end



@implementation BLLCollectionViewImageSudokuLayout


- (instancetype)init {
    self = [super init];
    if (self) {
        _attrsArray = [NSMutableArray new];
    }
    
    return self;
}


- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return YES;
}


- (void)prepareLayout {
    [super prepareLayout];
    
    
    //计算所有cell的属性
    [self.attrsArray removeAllObjects];
    NSInteger count = [self.collectionView numberOfItemsInSection:0];
    for (int i = 0; i<count; i++) {
        UICollectionViewLayoutAttributes *attrs = [self layoutAttributesForItemAtIndexPath:[NSIndexPath indexPathForItem:i inSection:0]];
        [self.attrsArray addObject:attrs];
    }
}


- (CGSize)collectionViewContentSize {
    return CGSizeMake(self.collectionView.width, self.collectionView.height);
}


- (NSArray *)layoutAttributesForElementsInRect:(CGRect )rect {
    return self.attrsArray;
}


- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger itemAmount = [self.collectionView numberOfItemsInSection:0];
    
    Class algorithmClass =  NSClassFromString([NSString stringWithFormat:@"BLLSudokuItemLayoutAttributeAlgorithm%zd", itemAmount]);
    BLLSudokuItemLayoutConfigurator *layoutConfigurator = [[BLLSudokuItemLayoutConfigurator alloc] initWithAlgorithmStrategy:[algorithmClass new]];
    
    return [layoutConfigurator layoutConfigWithCollectionView:self indexPath:indexPath];
}



@end
