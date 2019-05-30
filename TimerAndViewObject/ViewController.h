//
//  ViewController.h
//  TimerAndViewObject
//
//  Created by Civet on 2019/5/20.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义一个定时器对象
    //可以在每隔固定时间发送一个消息
    //通过此消息来调用相应的时间函数
    //通过此函数可以在固定时间段来完成一个根据时间间隔的任务
    NSTimer *_timerView;
}
//定时器属性对象
@property (retain,nonatomic)NSTimer *timerView;

@end

