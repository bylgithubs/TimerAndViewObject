//
//  ViewController.m
//  TimerAndViewObject
//
//  Created by Civet on 2019/5/20.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timerView = _timerView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: btn];
    
    UIButton *btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnStop.frame = CGRectMake(100, 200, 80, 40);
    [btnStop setTitle:@"停止定时器" forState:UIControlStateNormal];
    [btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: btnStop];
    
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 80, 80);
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    //设置view的标签值
    //通过父视图对象以及view的标签值可以获得相应的视图对象
    view.tag = 101;
    
}

- (void)pressStart{
    //NSTimer的类方法创建一个定时器并且启动这个定时器
    //P1:每隔多长时间调用定时器函数，以秒为单位
    //P2:表示实现定时器函数的对象（指针）
    //P3:定时器函数对象
    //P4:定时器函数中的一个参数，无参数可以传nil
    //P5:定时器是否重复操作，YES为重复
    //返回值为一个新建好的定时器对象
    _timerView =  [NSTimer scheduledTimerWithTimeInterval:0.25 target:self selector:@selector(updateTimer:) userInfo:@"使用者" repeats:YES];
}

-(void)updateTimer:(NSTimer *)timer{
    NSLog(@"定时器已启动,启动人：%@",timer.userInfo);
    
    //
    UIView *view = [self.view viewWithTag:101];
    view.frame = CGRectMake(view.frame.origin.x+5, view.frame.origin.y+5, 80, 80);
}

- (void)pressStop{
    if (_timerView != nil){
        [_timerView invalidate];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
