//
//  ModuleAViewController.m
//  ModuleA
//
//  Created by Apple on 2020/1/22.
//

#import "ModuleAViewController.h"
#import "PageAViewController.h"
@interface ModuleAViewController ()

@end

@implementation ModuleAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我是模块A业务组件";
      
      self.view.backgroundColor = [UIColor whiteColor];
      
      UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
      btn.frame = CGRectMake(0, 0, 300, 100);
      btn.backgroundColor = [UIColor greenColor];
      btn.center = self.view.center;
      [btn setTitle:@"模块A业务功能组件" forState: UIControlStateNormal];
      [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
      [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}
- (void)push {
    PageAViewController *VC = [[PageAViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
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
