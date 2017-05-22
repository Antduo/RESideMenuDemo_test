//
//  MenuViewController.m
//  RESideMenuDemo_test
//
//  Created by Saltedfish on 2017/5/22.
//  Copyright © 2017年 物联利浪. All rights reserved.
//

#import "MenuViewController.h"
#import "SettingViewController.h"
#import "RESideMenu.h"

@interface MenuViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray *titleArray;


@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _titleArray = @[@"开通会员",@"QQ钱包",@"网上营业厅",@"个性装扮",@"我的收藏",@"我的相册",@"我的文件"];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CELLID"];
    self.tableView.tableFooterView = [UIView new];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELLID"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    
    cell.imageView.image = [UIImage imageNamed:@"IconProfile"];

    cell.textLabel.text = _titleArray[indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    RESideMenu *RESM=(RESideMenu *)self.parentViewController;
    UINavigationController *Nav=(UINavigationController *)RESM.contentViewController;
    SettingViewController *settingVc = [SettingViewController new];
    settingVc.title = _titleArray[indexPath.row];
    [Nav pushViewController:settingVc animated:NO];
    [self.sideMenuViewController hideMenuViewController];
}



@end
