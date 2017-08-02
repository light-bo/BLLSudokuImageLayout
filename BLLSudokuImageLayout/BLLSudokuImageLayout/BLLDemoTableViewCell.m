//
//  BLLDemoTableViewCell.m
//  BLLSudokuImageLayout
//
//  Created by light_bo on 2017/8/2.
//  Copyright © 2017年 light_bo. All rights reserved.
//

#import "BLLDemoTableViewCell.h"
#import "BLLCollectionViewImageSudokuLayout.h"
#import "UIView+BLLSudokuImageLayout.h"
#import "BLLImageCollectionViewCell.h"


static NSString *const kImageCellId = @"BLLImageCollectionViewCell";


@interface BLLDemoTableViewCell ()
<
    UICollectionViewDelegate,
    UICollectionViewDataSource
>

@property (nonatomic, strong) UICollectionView *mainCollectionView;
@property (nonatomic, assign) NSInteger imageCount;

@end




@implementation BLLDemoTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self configMainCollectionView];
    }
    
    return self;
}

- (void)updateConstraints {
    [super updateConstraints];
    
    _mainCollectionView.frame = CGRectMake(0, 0, self.width, self.height);
}

- (void)layoutSubviews {
    _mainCollectionView.frame = CGRectMake(0, 0, self.width, self.height);
}

- (void)configMainCollectionView {
    BLLCollectionViewImageSudokuLayout *collectionViewImageSudokuLayout = [[BLLCollectionViewImageSudokuLayout alloc] init];
    collectionViewImageSudokuLayout.columnMargin = 2;
    collectionViewImageSudokuLayout.rowMargin = 2;
    
    _mainCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:collectionViewImageSudokuLayout];
    _mainCollectionView.backgroundColor = [UIColor whiteColor];
    _mainCollectionView.delegate = self;
    _mainCollectionView.dataSource = self;
    [_mainCollectionView registerClass:[BLLImageCollectionViewCell class] forCellWithReuseIdentifier:kImageCellId];
    
    [self addSubview:_mainCollectionView];
    
    [self setNeedsUpdateConstraints];
}


- (void)setUpData:(NSInteger)imageCount {
    _imageCount = imageCount;
    
    [_mainCollectionView reloadData];
}


#pragma mark - CollectionView
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _imageCount;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    BLLImageCollectionViewCell *imageCell = [collectionView dequeueReusableCellWithReuseIdentifier:kImageCellId forIndexPath:indexPath];

    imageCell.backgroundColor = [UIColor colorWithRed:(rand() % 256) / 256.f green:(rand() % 256) / 256.f blue:(rand() % 256) / 256.f alpha:1];
    
    return imageCell;
}





@end
