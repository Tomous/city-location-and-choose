//
//  ViewController.m
//  地理位置
//
//  Created by 许大成 on 16/1/19.
//  Copyright © 2016年 许大成. All rights reserved.
//

#import "ViewController.h"
#import "BAddressPickerController.h"

@interface ViewController ()<BAddressPickerDelegate,BAddressPickerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BAddressPickerController *addressPickerController = [[BAddressPickerController alloc] initWithFrame:self.view.frame];
    addressPickerController.dataSource = self;
    addressPickerController.delegate = self;
    
    [self addChildViewController:addressPickerController];
    [self.view addSubview:addressPickerController.view];

}

#pragma mark - BAddressController Delegate
- (NSArray*)arrayOfHotCitiesInAddressPicker:(BAddressPickerController *)addressPicker{
    return @[@"北京",@"上海",@"深圳",@"杭州",@"广州",@"武汉",@"天津",@"重庆",@"成都",@"苏州"];
}


- (void)addressPicker:(BAddressPickerController *)addressPicker didSelectedCity:(NSString *)city{
    NSLog(@"%@",city);
}

- (void)beginSearch:(UISearchBar *)searchBar{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)endSearch:(UISearchBar *)searchBar{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
