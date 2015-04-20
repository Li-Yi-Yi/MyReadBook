//
//  MyTabbarController.m
//  MyBookReader
//
//  Created by 蔡成汉 on 15/4/18.
//  Copyright (c) 2015年 LiYi. All rights reserved.
//

#import "MyTabbarController.h"
#import "BookShelfViewController.h"
#import "BookStoreViewController.h"
#import "PersonalCenterViewController.h"

/**
 *  字体
 *
 *  @return <#return value description#>
 */
#define titleFontName @"Helvetica Neue"

/**
 *  文字大小
 *
 *  @return 12号
 */
#define titleFontSize 12


@interface MyTabbarController ()
{
    BookShelfViewController *bookShelfViewController;
    BookStoreViewController *bookStoreViewController;
    PersonalCenterViewController *personalCenterViewController;
}
@end

@implementation MyTabbarController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //字号
    UIFont *font = [UIFont fontWithName:titleFontName size:titleFontSize];
    
    //颜色
    UIColor *color = [UIColor redColor];
    
    
    bookShelfViewController = [[BookShelfViewController alloc]init];
    bookShelfViewController.title = @"书架";
    bookShelfViewController.tabBarItem.tag = 0;
    bookShelfViewController.tabBarItem.image = homeImage;
    bookShelfViewController.tabBarItem.selectedImage = homeViewSelectedImage;
    [bookShelfViewController.tabBarItem setTitleTextAttributes:attributDicNor forState:UIControlStateNormal];
    [bookShelfViewController.tabBarItem setTitleTextAttributes:attributDicHeight forState:UIControlStateHighlighted];
    
    bookStoreViewController = [[BookStoreViewController alloc]init];
    bookStoreViewController.title = @"书城";
    
    personalCenterViewController = [[PersonalCenterViewController alloc]init];
    personalCenterViewController.title = @"个人";
    
    self.viewControllers = [NSArray arrayWithObjects:bookShelfViewController,bookStoreViewController,personalCenterViewController, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
