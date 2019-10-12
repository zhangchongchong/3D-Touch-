//
//  ViewController.m
//  3DTouch
//
//  Created by 张冲 on 2018/2/27.
//  Copyright © 2018年 张冲. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate>
{

 }
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    NSMutableArray *mutableArray = [NSMutableArray arrayWithCapacity:3];
    NSLog(@"mutable = %@",mutableArray);
    mutableArray[0] = @"1";
    mutableArray[1] = @"2";
    mutableArray[2]  = @"3";

    mutableArray[3] = @"4";
    NSLog(@"aaaaaaa = %@",mutableArray);
    mutableArray[5] = @"5";
    NSLog(@"hhhhhhhh = %@",mutableArray);

    UILabel *testLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 300, 50)];
    testLabel.text = @"点击测试peak&pop";
    testLabel.textColor = [UIColor purpleColor];
    testLabel.userInteractionEnabled = YES;
    self.textLabel = testLabel;

    [self.view addSubview:testLabel];

    [self registerForPreviewingWithDelegate:self sourceView:testLabel];

    // Do any additional setup after loading the view, typically from a nib.
}
- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{

    SecondViewController *second = [[SecondViewController alloc]init];
    second.view.backgroundColor = [UIColor yellowColor];
//    second.preferredContentSize = CGSizeMake(0, 50);
    return second;
}
- (void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
    [self presentViewController:viewControllerToCommit animated:YES completion:^{
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
