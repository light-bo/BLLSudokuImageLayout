//
//  BLLSudokuItemLayoutConfigurator.h
//  BLLSudokuImageLayout
//
//  Created by light_bo on 2017/7/29.
//  Copyright © 2017年 light_bo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UICollectionViewLayoutAttributes;
@class BLLCollectionViewImageSudokuLayout;
@class BLLSudokuItemLayoutAttributeAlgorithm;


@protocol BLLSudokuItemLayoutAttributeAlgorithmProtocol <NSObject>

@required
- (UICollectionViewLayoutAttributes *)layoutConfigWithCollectionView:(BLLCollectionViewImageSudokuLayout *)collectionViewSudokuLayout indexPath:(NSIndexPath *)indexPath;

@end




@interface BLLSudokuItemLayoutConfigurator : NSObject <BLLSudokuItemLayoutAttributeAlgorithmProtocol>

- (instancetype)initWithAlgorithmStrategy:(BLLSudokuItemLayoutAttributeAlgorithm *)sudokuLayoutAlgorithm;

@end


//BLLSudokuItemLayoutAttributeAlgorithm
@interface BLLSudokuItemLayoutAttributeAlgorithm : NSObject <BLLSudokuItemLayoutAttributeAlgorithmProtocol>
@end

//BLLSudokuItemLayoutAttributeAlgorithm1
@interface BLLSudokuItemLayoutAttributeAlgorithm1 : BLLSudokuItemLayoutAttributeAlgorithm
@end

//BLLSudokuItemLayoutAttributeAlgorithm2
@interface BLLSudokuItemLayoutAttributeAlgorithm2 : BLLSudokuItemLayoutAttributeAlgorithm
@end

//BLLSudokuItemLayoutAttributeAlgorithm3
@interface BLLSudokuItemLayoutAttributeAlgorithm3 : BLLSudokuItemLayoutAttributeAlgorithm
@end

//BLLSudokuItemLayoutAttributeAlgorithm4
@interface BLLSudokuItemLayoutAttributeAlgorithm4 : BLLSudokuItemLayoutAttributeAlgorithm
@end

//BLLSudokuItemLayoutAttributeAlgorithm5
@interface BLLSudokuItemLayoutAttributeAlgorithm5 : BLLSudokuItemLayoutAttributeAlgorithm
@end

//BLLSudokuItemLayoutAttributeAlgorithm6
@interface BLLSudokuItemLayoutAttributeAlgorithm6 : BLLSudokuItemLayoutAttributeAlgorithm
@end

//BLLSudokuItemLayoutAttributeAlgorithm7
@interface BLLSudokuItemLayoutAttributeAlgorithm7 : BLLSudokuItemLayoutAttributeAlgorithm
@end

//BLLSudokuItemLayoutAttributeAlgorithm8
@interface BLLSudokuItemLayoutAttributeAlgorithm8 : BLLSudokuItemLayoutAttributeAlgorithm
@end

//BLLSudokuItemLayoutAttributeAlgorithm9
@interface BLLSudokuItemLayoutAttributeAlgorithm9 : BLLSudokuItemLayoutAttributeAlgorithm
@end



