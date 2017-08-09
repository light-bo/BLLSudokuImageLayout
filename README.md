# BLLSudokuImageLayout
This repo makes you can diaplay something(always imags) like as below with 9 style according to the amount of the thing(always imags), the number on the view's top is show as descript info, not a component of the view, the diffirent color region always used to display diffirent images. (类似 **nice** app 首页列表中图片显示效果的 UI 组件) The mechanism of the view is subclass a UICollectionViewFlowLayout of the UICollectionView and custom some layout  algorithms:

<div  align="left">
	<img src="http://7xskiu.com1.z0.glb.clouddn.com/image/sudoku/1.png" width = "300" height = "300" align=center/>
</div>

<br />

<div  align="left">
	<img src="http://7xskiu.com1.z0.glb.clouddn.com/image/sudoku/2.png" width = "300" height = "300" align=center />
</div>

<br />

<div  align="left">
	<img src="http://7xskiu.com1.z0.glb.clouddn.com/image/sudoku/3.png" width = "300" height = "300" align=center />
</div>   

<br />

<div  align="left">
	<img src="http://7xskiu.com1.z0.glb.clouddn.com/image/sudoku/4.png" width = "300" height = "300" align=center />
</div>
   
<br />   

<div  align="left">
	<img src="http://7xskiu.com1.z0.glb.clouddn.com/image/sudoku/5.png" width = "300" height = "300" align=center />
</div>

<br />

<div  align="left">
	<img src="http://7xskiu.com1.z0.glb.clouddn.com/image/sudoku/6.png" width = "300" height = "300" align=center />
</div>

<br />

<div  align="left">
	<img src="http://7xskiu.com1.z0.glb.clouddn.com/image/sudoku/7.png" width = "300" height = "300" align=center />
</div>

<br />

<div  align="left">
	<img src="http://7xskiu.com1.z0.glb.clouddn.com/image/sudoku/8.png" width = "300" height = "300" align=center />
</div>


<br />

<div  align="left">
	<img src="http://7xskiu.com1.z0.glb.clouddn.com/image/sudoku/9.png" width = "300" height = "300" align=center />
</div>
    
    
# Features   

* Using custom UICollectionViewLayout to make the view
* Support custom height of the view
* Support custom amount of the color region
* Works with ARC and iOS >= 7
    

# Installation
#### Cocoapod
To integrate AFNetworking into your Xcode project using CocoaPods, specify it in your **Podfile**:
```
pod 'BLLSudokuImageLayout'
```

Then, run the following command:

```bash
$ pod install
```

#### Manual
Just download the repo and copy the **Layout** directory below the **BLLSudokuImageLayout** to your project.


# Usage    

The code below will use the **BLLCollectionViewImageSudokuLayout** class to config the collectionview's layout.

```

    BLLCollectionViewImageSudokuLayout *collectionViewImageSudokuLayout = [[BLLCollectionViewImageSudokuLayout alloc] init];
    collectionViewImageSudokuLayout.columnMargin = 2;
    collectionViewImageSudokuLayout.rowMargin = 2;
    
    //make sure to custom your own width and height of the UICollectionView
    _yourCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, yourCustomWidth, yourCustomHeight) collectionViewLayout:collectionViewImageSudokuLayout];
    _yourCollectionView.backgroundColor = [UIColor whiteColor];
    _yourCollectionView.delegate = self;
    _yourCollectionView.dataSource = self;
    [_yourCollectionView registerClass:[BLLImageCollectionViewCell class] forCellWithReuseIdentifier:kImageCellId];
    
    [self addSubview: _yourCollectionView];
 
```
    
    
# License
**BLLSudokuImageLayout** is licensed under the terms of the **MIT** License. Please see the LICENSE file for full details.

If this code was helpful, I would love to hear from you.



	

