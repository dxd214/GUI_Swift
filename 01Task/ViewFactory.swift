//
//  ViewFactory.swift
//  01Task
//
//  Created by 董晓东 on 15/6/30.
//  Copyright © 2015年 董晓东. All rights reserved.
//

import UIKit

class ViewFactory: NSObject
{

    /**
    * 控件默认尺寸
    */
    class func getDefaultFrame() -> CGRect
    {
        let defaultFrame = CGRectMake(0, 0, 100, 30)
        return defaultFrame
    }
    
    class func createControl(type:String, title:[String], action:Selector, sender:AnyObject) -> UIView
    {
        switch(type)
        {
        case "label":
            return ViewFactory.createLabel(title[0])
        case "button":
            return ViewFactory.createButton(title[0], action: action,
                sender: sender as! UIViewController)
        case "text":
            return ViewFactory.createTextField(title[0], action: action,
                sender: sender as! UITextFieldDelegate)
        case "segment":
            return ViewFactory.createSegment(title, action: action, sender:
                sender as! UIViewController)
        case "switch":
            return ViewFactory.createSwitch(action, sender: sender as! UIViewController)
        case "pageControl":
            return ViewFactory.createPageCtrl( action, sender: sender as! UIViewController)
        case "progressView":
            return ViewFactory.createProgressViews(title[0])
        case "slider":
            return ViewFactory.createSlider(action, sender:  sender as! UIViewController)
        default:
            return ViewFactory.createLabel(title[0])
        }
    }
    
    /**
    * 创建按钮控件
    */
    class func createButton(title:String, action:Selector, sender:UIViewController)->UIButton
    {
        let button = UIButton(frame:ViewFactory.getDefaultFrame())
        button.backgroundColor = UIColor.orangeColor()
        button.setTitle(title, forState:.Normal)
        button.titleLabel!.textColor = UIColor.whiteColor()
        button.titleLabel!.font = UIFont.systemFontOfSize(14)
        button.addTarget(sender, action:action, forControlEvents:UIControlEvents.TouchUpInside)
        return button
    }
    
    /**
    * 创建文本输入框控件
    */
    class func createTextField(value:String, action:Selector, sender:UITextFieldDelegate)
        -> UITextField
    {
        let textField = UITextField(frame:ViewFactory.getDefaultFrame())
        textField.backgroundColor = UIColor.clearColor()
        textField.textColor = UIColor.blackColor()
        textField.text = value
        textField.borderStyle = UITextBorderStyle.RoundedRect
        textField.adjustsFontSizeToFitWidth = true
        textField.delegate = sender
        return textField
    }
    
    /**
    * 创建分段单选控件
    */
    class func createSegment(items: [String], action:Selector, sender:UIViewController)
        ->UISegmentedControl
    {
        let segment = UISegmentedControl(items:items)
        segment.frame = ViewFactory.getDefaultFrame()
        //segment.segmentedControlStyle = UISegmentedControlStyle.Bordered
        segment.momentary = false
        segment.addTarget(sender, action:action, forControlEvents:UIControlEvents.ValueChanged)
        return segment
    }
    
    /**
    * 创建文本标签控件
    */
    class func createLabel(title:String) -> UILabel
    {
        let label = UILabel()
        label.textColor = UIColor.blackColor();
        label.backgroundColor = UIColor.whiteColor();
        label.text = title;
        label.frame = ViewFactory.getDefaultFrame()
        label.font =  UIFont(name: "HelveticaNeue-Bold", size: 16)
        return label
    }
    
    /**
    * 创建图片视图
    */
    class func createImageView(name:String,hname:String) -> UIImageView
    {
        let imageView = UIImageView()
        imageView.image = UIImage(named: name)
        imageView.highlightedImage = UIImage(named: hname)
        imageView.frame = ViewFactory.getDefaultFrame()
        return imageView
    }
    
    /**
    * 创建开关按钮控件
    */
    class func createSwitch(action:Selector, sender:UIViewController)->UISwitch
    {
        let switchUI = UISwitch(frame:ViewFactory.getDefaultFrame())
        switchUI.addTarget(sender, action:action, forControlEvents:UIControlEvents.ValueChanged)
        return switchUI
    }
    
    /**
    * 创建页面指示控件
    */
    class func createPageCtrl(action:Selector, sender:UIViewController)->UIPageControl
    {
        let pageCtrl = UIPageControl(frame:ViewFactory.getDefaultFrame())
        pageCtrl.addTarget(sender, action:action, forControlEvents:UIControlEvents.ValueChanged)
        return pageCtrl
    }
    
    /**
    * 创建进度条控件
    */
    class func createProgressViews(name:String)->UIProgressView
    {
        let progress = UIProgressView(frame:ViewFactory.getDefaultFrame())
        progress.progressImage = UIImage(named: name)
        return progress
    }
    /**
    * 创建滑动条控件
    */
    class func createSlider(action:Selector, sender:UIViewController)->UISlider
    {
        let slider = UISlider(frame:ViewFactory.getDefaultFrame())
        slider.addTarget(sender, action: action, forControlEvents: UIControlEvents.ValueChanged)
        return slider
    }
}