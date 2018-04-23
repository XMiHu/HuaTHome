//
//  HYBaseTabBarController.m
//  HuaTxQiDemo
//
//  Created by MiHu on 2018/4/23.
//  Copyright © 2018年 MiHu. All rights reserved.
//

#import "HYBaseTabBarController.h"
#import "HYBaseNavigationController.h"

@interface HYBaseTabBarController ()

@end

@implementation HYBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加控制器
    [self setChildVCs];
    
}

-(void)setChildVCs{
    
    
    UIViewController * homeCon = [[UIViewController alloc]init];
    [self addChildVC:homeCon title:@"专题" imageName:@"project_nomal_icon" selectImageName:@"project_select_icon"];
    
}

-(void)addChildVC:(UIViewController*)VC title:(NSString*)title imageName:(NSString*)imageName selectImageName:(NSString*)selectImageName
{
    
    HYBaseNavigationController *naVC=[[HYBaseNavigationController alloc]initWithRootViewController:VC];
    
    naVC.tabBarItem.title = title;
    
    naVC.tabBarItem.image = [UIImage imageNamed:imageName];
    
    UIImage *selectImage = [UIImage imageNamed:selectImageName];
    
    naVC.tabBarItem.selectedImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [self addChildViewController:naVC];
    
}

@end




