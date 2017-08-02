//
//  BLLCollectionViewImageSudokuLayout.h
//  BLLSudokuImageLayout
//
//  Created by light_bo on 2017/7/29.
//  Copyright © 2017年 light_bo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BLLCollectionViewImageSudokuLayout : UICollectionViewFlowLayout

/**
 每一列的间距
 */
@property (nonatomic, assign) float columnMargin;


/**
 每一行的间距
 */
@property (nonatomic, assign) float rowMargin;


@end
