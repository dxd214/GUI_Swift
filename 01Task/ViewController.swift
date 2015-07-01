//
//  ViewController.swift
//  01Task
//
//  Created by 董晓东 on 15/6/30.
//  Copyright © 2015年 董晓东. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UIAlertViewDelegate,UIActionSheetDelegate
{
    var txtNum:UITextField!
    var segDimension:UISegmentedControl!
    var btn:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

//        self._initLabel()
//        self._initTextField()
//        self._initImageView()
//        self._initButton()
//        self._initCustomButton()
//        self._initSlider()
//        self._initSegment()
//        self._initActivityIndicator()
//        self._initPageCtrl()
//        self._initSwitch()
//        self._initProgressView()
        
        setupControls()
        
    }
    //MARK:演示label
    func _initLabel()
    {
        //创建label
        var textLabel:UILabel
        var names:NSArray
        
        
        textLabel = UILabel(frame: CGRectMake(10, 30, 100, 50))

        //设置背景颜色
        textLabel.backgroundColor = UIColor.grayColor()
        //设置显示的内容
        textLabel.text = "无限互联3G学院"
        //设置字体大小
        textLabel.font = UIFont.systemFontOfSize(12)
        //设置字体大小并且加粗
        textLabel.font = UIFont.boldSystemFontOfSize(12)
        //设置字体的样式和大小
        textLabel.font = UIFont(name: "Apple Color Emoji", size: 13)

        
        //打印所有字体的名字
        names = UIFont.familyNames()
        print("names:\(names)");
        
        //设置字体的颜色
        textLabel.textColor = UIColor.greenColor();

        //设置字体的显示位置：居中、居左（默认）、居右
        textLabel.textAlignment = NSTextAlignment.Center;
        
        //设置显示的行数（默认显示一行）
        textLabel.numberOfLines = 2;
        //注意：为0的时候是设置显示的行数为多行，自动折行
        textLabel.numberOfLines = 0;
        
        //    //设置自动调整宽高
        //注意这句话放置的地方
        textLabel.sizeToFit()

        
        //添加到视图
        self.view.addSubview(textLabel)

    }
      //MARK:UITextField
    /*_____________________________UITextField_____________________________*/
    func _initTextField()
    {
        var textField:UITextField
        //创建输入框
        textField = UITextField(frame:CGRectMake(120, 30, 100, 30))
        
        //设置输入框的边框样式
        /*
        UITextBorderStyleNone, //没有边框
        UITextBorderStyleLine, //矩形边框，黑色线条
        UITextBorderStyleBezel,//灰色线条
        UITextBorderStyleRoundedRect   //圆弧的边框
        */
        textField.borderStyle = UITextBorderStyle.RoundedRect
        
        //设置输入文字的对其方式
        textField.textAlignment = NSTextAlignment.Center;
        //设置输入的字体颜色
        textField.textColor = UIColor.redColor()
        //设置字体的大小
        textField.font = UIFont.systemFontOfSize(20)
        textField.font = UIFont(name: "Apple Color Emoji", size: 20)
        //设置输入框中的内容
        textField.text = "text"
        
        //设置首字母大小写
        //禁用首字母大写
        textField.autocapitalizationType = UITextAutocapitalizationType.None;
        
        //设置弹出的键盘的样式
        /*
        UIKeyboardTypeEmailAddress://邮箱
        UIKeyboardTypeNumberPad：//数字键盘
        UIKeyboardTypeURL：//网址
        */
        textField.keyboardType = UIKeyboardType.URL;
        //设置return键的样式
        textField.returnKeyType = UIReturnKeyType.Join;
        
        //设置提示文字
        textField.placeholder = "请输入密码"
        //是否提供文本的隐藏属性(默认是NO)
        textField.secureTextEntry = true

        
        //设置弹出键盘
        textField.becomeFirstResponder()
        
        //将当前对象作为它的代理对象
        textField.delegate = self;
        
        //设置清楚按钮
        /*
        UITextFieldViewModeNever,
        UITextFieldViewModeWhileEditing,
        UITextFieldViewModeUnlessEditing,
        UITextFieldViewModeAlways
        */
        textField.clearButtonMode = UITextFieldViewMode.WhileEditing;
       
        //添加到视图
        self.view.addSubview(textField)

    }
//------------------UITextFieldDelegate------------------
    //编辑将要开始的时候调用
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {

        print("编辑将要开始")
        //yes：开始编辑  NO：终止编辑
        return true
    }
    //已经开始编辑
    func textFieldDidBeginEditing(textField: UITextField) {
        print("开始编辑")
    }
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("已经结束编辑")
        return true
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("点击了return按钮")
        //收起键盘
        textField.resignFirstResponder()
        return true
    }
    //MARK:UIImageView
    /*_____________________________UIImageView_____________________________*/
    
    func _initImageView()
    {
        var image:UIImage!
        var image1:UIImage!
        var image2:UIImage!
        var image3:UIImage!
        var image4:UIImage!
        var image5:UIImage!
        var imageView:UIImageView
        var images:NSArray
        var button:UIButton
        
        //图片的后缀名默认是png
        image = UIImage(named: "1")
        imageView = UIImageView(frame: CGRectMake(20, 90, 190, 190))
        //设置正常状态显示的图片
        imageView.image = image;
        //设置高亮状态显示的图片
        imageView.highlightedImage = UIImage(named:"scene1.jpg")
        //设置图片的高亮状态（默认是NO）
        imageView.highlighted = true
        
        //添加边框
        imageView.layer.borderWidth = 1;
        imageView.layer.borderColor = UIColor.greenColor().CGColor
        imageView.layer.cornerRadius = 5;
        
        //设置图片填充样式
        //等比例显示图片
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        self.view.addSubview(imageView)
        
        image1 = UIImage(named:"scene1.jpg" )
        image2 = UIImage(named:"scene2.jpg" )
        image3 = UIImage(named:"scene3.jpg" )
        image4 = UIImage(named:"scene4.jpg" )
        image5 = UIImage(named:"scene5.jpg" )
        
        images = [image1,image2,image3,image4,image5];
        
        //设置imageView的动画集合
        imageView.animationImages = images as? [UIImage];
        //设置动画的持续时间
        imageView.animationDuration = 1;
        
        //开始动画
        imageView.startAnimating()
        
        //停止动画
        imageView.stopAnimating()
        
        //打开触发事件(默认是NO)
        imageView.userInteractionEnabled = true;
        
        button = UIButton(type: UIButtonType.ContactAdd)
        button.addTarget(self, action: Selector(buttonAction(button)), forControlEvents: UIControlEvents.TouchUpInside)
        button.frame = CGRectMake(20, 20, 40, 40);
        imageView.addSubview(button)
    }
    func buttonAction(button:UIButton)
    {
        if (button.tag == 100)
        {
            print("按钮button被点击了");
        }
        else if (button.tag == 101)
        {
            print("按钮button1被点击了");
        }
        else if (button.tag == 102)
        {
            print("自定义按钮被点击了");
            button.selected = !button.selected;
        }
    }
    //MARK:设置自定义图片的按钮
    
    func _initButton()
    {
        
    }
    //设置自定义图片的按钮
    func _initCustomButton()
    {
        var button:UIButton
        var image1:UIImage?
        var image2:UIImage?
        
        button = UIButton(type: UIButtonType.Custom)
        button.frame = CGRectMake(220, 200, 80, 40);
        
        button.tag = 102;
        
        //创建显示的图片
        image1 = UIImage(named: "back_on_black")
        image2 = UIImage(named: "back_on")
        
        //设置标题
        button.setTitle("按钮", forState: UIControlState.Normal)
        button.setTitle("点击中", forState: UIControlState.Highlighted)

        
        //设置按钮的显示图片(注意：如果向设置标题，则用此种方法不能设置标题)
        //    [button setImage:image1 forState:UIControlStateNormal];
        //    [button setImage:image2 forState:UIControlStateHighlighted];
        
        //设置标题的同时设置图片可以用以下方法
        button.setBackgroundImage(image1, forState: UIControlState.Normal)
        button.setBackgroundImage(image2, forState: UIControlState.Highlighted)
        
        //添加点击事件
        button.addTarget(self, action: Selector("tapped"), forControlEvents: UIControlEvents.TouchUpInside)
        button.setTitle("禁用", forState: UIControlState.Disabled)
        
        //设置按钮的禁用属性
        button.enabled = false;
        self.view.addSubview(button)
    }
    func tapped(){
        print("点击")
    }
      //MARK:UISlider
    /*_____________________________UISlider_____________________________*/
    func _initSlider()
    {
        //创建滑动条
        var slider:UISlider
        slider = UISlider(frame: CGRectMake(20, 300, 200, 20))
        //设置最值
        slider.minimumValue = 0;
        slider.maximumValue = 1;
        
        //设置slider的初始值
        slider.value = 0.5;
//        slider.setValue(0.5, animated: true)
        
        //设置滑动按钮的图片
        slider.setThumbImage(UIImage(named: "com_thumb_max_n-Decoded"), forState:UIControlState.Normal)
        slider.setThumbImage(UIImage(named: "com_thumb_max_h-Decoded"), forState:UIControlState.Highlighted)
        var minImg:UIImage! = UIImage(named: "com_slider_min_l-Decoded")
        var changeImg:UIImage! = UIImage(named: "com_slider_max_l-Decoded")

        
        //设置图片的拉伸点
        minImg = minImg.stretchableImageWithLeftCapWidth(10, topCapHeight: 0)
        changeImg = changeImg.stretchableImageWithLeftCapWidth(10, topCapHeight: 0)
        //
        //设置左侧的滑动条图片
        slider.setMinimumTrackImage(minImg, forState: UIControlState.Normal)
        slider.setMaximumTrackImage(changeImg, forState: UIControlState.Normal)
        
        //设置滑动条的左侧的颜色
        //TODO:api失效
//            [slider setMinimumTrackTintColor:[UIColor redColor]];
        //设置滑动条的右侧的颜色
//            [slider setMaximumTrackTintColor:[UIColor greenColor]];
        slider.addTarget(self, action: Selector(sliderAction(slider)), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(slider)
    }
    func sliderAction(slider:UISlider)
    {
        let value = slider.value
        print("滑动值：\(value)")
    
    }
      //MARK:UISegmentedControl分段控件
    /*_____________________________UISegmentedControl分段控件_____________________________*/
    func _initSegment()
    {
        var items:NSArray
        var segment:UISegmentedControl
        //创建分段控键显示的标题
        items = ["电影","动漫","综艺"]
        //创建分段控键
        segment = UISegmentedControl(items: items as [AnyObject])
        segment.frame = CGRectMake(20, 340, 200, 20)
        //设置默认选中的选项
        segment.selectedSegmentIndex = 1;
        //设置背景颜色
        segment.tintColor = UIColor.redColor()
        
        //添加点击事件
        segment.addTarget(self, action: Selector(segmentAction(segment)), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(segment)


    }
    func segmentAction(segment:UISegmentedControl)
    {
        print(segment.selectedSegmentIndex)
    }
      //MARK:UIActivityIndicatorView
    /*_____________________________UIActivityIndicatorView_____________________________*/
    func _initActivityIndicator()
    {
        var app:UIApplication
        var indicatorView:UIActivityIndicatorView
        self.view.backgroundColor = UIColor.orangeColor()
        
        app = UIApplication.sharedApplication()
        //设置网络加载提示失效
//        [app setNetworkActivityIndicatorVisible:YES];
        
        //创建视图并且设置样式
        /*
        UIActivityIndicatorViewStyleWhiteLarge,
        UIActivityIndicatorViewStyleWhite,
        UIActivityIndicatorViewStyleGray,
        */
        indicatorView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge)
        indicatorView.backgroundColor = UIColor.redColor()
        indicatorView.frame = CGRectMake(200, 50, 40, 40)
        
        //开始动画
        indicatorView.startAnimating()
        self.view.addSubview(indicatorView)
    }
      //MARK:UIPageControl+UIAlertView+UIActionSheet
    /*_____________________________UIPageControl_____________________________*/

    func _initPageCtrl()
    {
        var pageCtrl:UIPageControl
        pageCtrl = UIPageControl(frame: CGRectMake(20, 380, 200, 20))
        pageCtrl.backgroundColor = UIColor.redColor()
        //设置总页数
        pageCtrl.numberOfPages = 4;
        //设置当前所在页数
        pageCtrl.currentPage = 1;
        //设置图标的颜色（未选中）
        pageCtrl.pageIndicatorTintColor = UIColor.blackColor()
        
        //添加点击事件
        pageCtrl.addTarget(self, action: "pageAction:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(pageCtrl)
    }
    func pageAction(pg:UIPageControl)
    {
        print(pg.currentPage)
        /*_____________________________提示框_____________________________*/
        //   1. UIAlertView
        var alertView:UIAlertView!
        alertView = UIAlertView(title: "提示",message: "确定退出吗？",delegate: self,cancelButtonTitle: "取消",otherButtonTitles: "确定", "按钮1")
        //窗口样式
        alertView.alertViewStyle = UIAlertViewStyle.LoginAndPasswordInput
        //显示提示框
        alertView.show()
//        /*______________________弹出框______________________*/
//        var actionSheet:UIActionSheet!
//        actionSheet = UIActionSheet(title: "提示", delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: "确定", otherButtonTitles: "其他")
//            //添加到当前视图上显示
//        actionSheet!.showInView(self.view)
    }
      //MARK:UIAlertView
    //UIAlertView delaget
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int)
    {
        if (buttonIndex == 0)
        {
            NSLog("点击取消了");
        }
        else if (buttonIndex == 1)
        {
            
            NSLog("点击确定了");
            
            let textField1 = alertView.textFieldAtIndex(0)
            print("textField1:\(textField1!.text)");
            
            let textField2 = alertView.textFieldAtIndex(1)
            print("textField2:\(textField2!.text)")
            
        }

    }
    //UIActionSheet delaget
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int)
    {
        print("buttonIndex:\(buttonIndex)")
    }
      //MARK:UISwitch
    /*_____________________________UISwitch_____________________________*/
    func _initSwitch()
    {
        var switchUI:UISwitch
        switchUI = UISwitch(frame: CGRectMake(100, 420, 0, 0))
        //设置默认的状态
//        switchUI.on = true;
        switchUI.setOn(true, animated: true)
        
        //添加一个点击事件
        switchUI.addTarget(self, action: "swtichAction:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(switchUI)
    }
    
    func swtichAction(sw:UISwitch)
    {
    
        if(sw.on)
        {
            print("打开了");
        }
        else
        {
            print("关闭了");
        }
    
    }
      //MARK:
    /*_____________________________UIProgressView_____________________________*/

    func _initProgressView()
    {
        var progress:UIProgressView
        var image:UIImage!
        //数值范围是（0，1）
        progress = UIProgressView(frame: CGRectMake(30, 450, 200, 20))
        progress.tag = 200;
        progress.progress = 0.5;
        
        //设置样式
        progress.progressViewStyle = UIProgressViewStyle.Bar;
        //设置进度条的颜色
        //已经下载的颜色
        progress.progressTintColor = UIColor.redColor()
        //未下载的颜色
        progress.trackTintColor = UIColor.greenColor()
        
        image = UIImage(named:"com_slider_max_l-Decoded")
        
        //设置拉伸点
        image = image.stretchableImageWithLeftCapWidth(10, topCapHeight: 0)
        
        //设置图片(iOS7没有效果)
        progress.progressImage = image;
        progress.trackImage = image;
        NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "timeAction:", userInfo: nil, repeats: true)
        self.view .addSubview(progress)
    }
    func timeAction(time:NSTimer)
    {
        //取得视图
        let progressView = self.view.viewWithTag(200) as! UIProgressView
        progressView.progress += 0.05;
    
    }
      //MARK:快速创建控件
    func setupControls()
    {
        //创建文本标签
        let labelNum = ViewFactory.createLabel("阈值:")
        labelNum.frame = CGRect(x: 20, y: 100, width: 60, height: 30)
        self.view.addSubview(labelNum)
        
        let labelDm = ViewFactory.createLabel("维度:")
        labelDm.frame = CGRect(x: 20, y: 200, width: 60, height: 30)
        self.view.addSubview(labelDm)
        
        //创建文本输入框
        txtNum = ViewFactory.createTextField("12", action:Selector("numChanged"), sender:self)
        txtNum.frame = CGRect(x:80,y:100,width:200,height:30)
        txtNum.returnKeyType = UIReturnKeyType.Done
        self.view.addSubview(txtNum)
        
        //创建分段单选控件
        segDimension = ViewFactory.createSegment(["3x3", "4x4", "5x5"], action:"mySegmentAction:",
            sender:self)
        segDimension.frame = CGRect(x:80,y: 200,width: 200,height: 30)
        self.view.addSubview(segDimension)
        segDimension.selectedSegmentIndex = 1
        
        //创建按钮控件
        btn = ViewFactory.createButton("确定", action: "buttonAction2:", sender: self)
        btn.frame.origin = CGPointMake(80, 300)
        self.view.addSubview(btn)
        
        //创建滑动条
        let slider = ViewFactory.createSlider("mySliderAction:", sender: self)
        slider.frame = CGRect(x: 20, y: 100, width: 60, height: 30);
//        self.view.addSubview(slider)
        
        //创建下载进度条
        let progressView = ViewFactory.createProgressViews("1.png")
        progressView.backgroundColor = UIColor.redColor()
        progressView.frame = CGRect(x: 20, y: 130, width: 60, height: 30);
        self.view.addSubview(progressView)
        
        //开关按钮
        let switchUI = ViewFactory.createSwitch("switchAction:", sender: self)
        switchUI.frame = CGRect(x: 20, y: 150, width: 0, height: 0);
//        self.view.addSubview(switchUI)
        
        //页面指示灯
        let pageControl = ViewFactory.createPageCtrl("pagesAction:", sender: self)
        pageControl.frame = CGRect(x: 20, y: 170, width: 60, height: 30);
        pageControl.backgroundColor = UIColor.orangeColor()
        pageControl.currentPage = 0
        pageControl.numberOfPages = 4
//        self.view.addSubview(pageControl)
        
        
    }
    func switchAction(switchUI:UISwitch)
    {
        if (switchUI.on == true)
        {
            print("打开了")
        }
        else
        {
            print("关闭了")
        }
    }
    func pagesAction(pageCtrl:UIPageControl)
    {
        print("第\(pageCtrl.currentPage+1)页")
    }
    func buttonAction2(button:UIButton)
    {
        print("点击了")
    }
    func mySliderAction(slider:UISlider)
    {
        print("\(slider.value)")
    }
    func mySegmentAction(segment:UISegmentedControl)
    {
        print("\(segment.selectedSegmentIndex)")
    }

}

