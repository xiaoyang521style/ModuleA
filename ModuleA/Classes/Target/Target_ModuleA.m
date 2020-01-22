//
//  Target_ModuleA.m
//  ModuleA
//
//  Created by Apple on 2020/1/22.
//

#import "Target_ModuleA.h"
#import "ModuleAViewController.h"
@implementation Target_ModuleA
- (UIViewController *)Action_viewController:(NSDictionary *)params {
    ModuleAViewController *VC = [[ModuleAViewController alloc] init];
    return VC;
}

@end
