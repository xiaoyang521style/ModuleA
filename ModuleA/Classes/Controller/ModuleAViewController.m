//
//  ModuleAViewController.m
//  ModuleA
//
//  Created by Apple on 2020/1/22.
//

#import "ModuleAViewController.h"
#import "PageAViewController.h"
@interface ModuleAViewController ()
@property(nonatomic, copy)NSDictionary *params;
@property(nonatomic, copy)void(^callBackBlock) (NSString *);
@end

@implementation ModuleAViewController

-(instancetype)initWithParams:(NSDictionary *)params {
    if ([super init]) {
        self.callBackBlock = params[@"callback"];
        self.params = params[@"params"];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我是模块A业务组件";
      
      self.view.backgroundColor = [UIColor whiteColor];
      UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
      btn.frame = CGRectMake(0, 100, 300, 100);
      btn.backgroundColor = [UIColor greenColor];
      btn.center = self.view.center;
      [btn setTitle:@"模块A业务功能组件" forState: UIControlStateNormal];
      [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
      [self.view addSubview:btn];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(0, 250, 300, 100);
    btn2.backgroundColor = [UIColor greenColor];
    btn2.center = self.view.center;
    [btn2 setTitle:@"参数回调" forState: UIControlStateNormal];
    [btn2 addTarget:self action:@selector(callback) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    
    
    
    // Do any additional setup after loading the view.
}
-(void)callback{
    self.callBackBlock(@"我是回调参数");
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
