//
//  ViewController.m
//  BLLSudokuImageLayout
//
//  Created by light_bo on 2017/8/2.
//  Copyright © 2017年 light_bo. All rights reserved.
//

#import "ViewController.h"
#import "BLLDemoTableViewCell.h"
#import "UIView+BLLSudokuImageLayout.h"


static NSString *const kDemoTableCell = @"BLLDemoTableViewCell";

@interface ViewController ()
<
    UITableViewDelegate,
    UITableViewDataSource
>

@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) NSArray *imagesArray;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self configMainTableView];
}

- (void)configMainTableView {
    _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.width, self.view.height) style:UITableViewStylePlain];
    [_mainTableView registerClass:[BLLDemoTableViewCell class] forCellReuseIdentifier:kDemoTableCell];
    _mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _mainTableView.delegate = self;
    _mainTableView.dataSource = self;
    
    [self.view addSubview:_mainTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark --tableView
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    float screenHeight = [UIScreen mainScreen].bounds.size.height;
    switch (indexPath.row) {
        case 0:
        case 1:
            
            return screenHeight * 0.39;
            break;
            
        case 2:
            return screenHeight * 0.60;
            break;
            
        case 3:
            return screenHeight * 0.51;
            break;
            
        case 4:
            return screenHeight * 0.43;
            break;
            
        case 5:
            return screenHeight * 0.51;
            break;
            
        case 6:
        case 7:
            return screenHeight * 0.60;
            break;
            
        case 8:
            return screenHeight * 0.51;
            break;
            
        default:
            return 0;
            break;
    }
    
    return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 9;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BLLDemoTableViewCell *demoTableViewCell = [tableView dequeueReusableCellWithIdentifier:kDemoTableCell forIndexPath:indexPath];
    
    [demoTableViewCell setUpData:indexPath.section + 1];
    
    return demoTableViewCell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UILabel *header = [UILabel new];
    header.backgroundColor = [UIColor lightGrayColor];
    header.textColor = [UIColor blackColor];
    header.textAlignment = NSTextAlignmentCenter;
    header.text = [NSString stringWithFormat:@"%zd", section + 1];
    
    return header;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 20;
}




@end
