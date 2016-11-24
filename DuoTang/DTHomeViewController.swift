//
//  DTHomeViewController.swift
// DuoTang
//
//  Created by Dwysen on 16/10/25.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class DTHomeViewController: UIViewController {

    var selectedBtn = UIButton()
    
    var indicatorView = UIView()
    
    var titlesView = UIView()
    
    var contentView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        DTNetworkTool.shareNetworkTool.loadHomeChannels { [weak self]  (DanTangChannel) in
            for channel in DanTangChannel {
                let vc = DTTopicViewController()
                vc.title = channel.name
                vc.id = channel.id!
                self!.addChildViewController(vc)
                
        
                
            }
            
            self!.setupTitleView()
            
            self!.setupContentView()
            
            
            
            
            
        }

        
        
     
        
          
     
        
    }
    
    func setupTitleView(){
    let bgView = UIView()
        bgView.frame = CGRect(x: 0, y: kTitlesViewY, width: SCREENW, height: kTitlesViewH)
        view.addSubview(bgView)
        
        //标签
        let titlesView = UIView()
        titlesView.backgroundColor = DTGlobalColor()
        titlesView.frame = CGRect(x: 0, y: 0, width: SCREENW - kTitlesViewH, height: kTitlesViewH)
        bgView.addSubview(titlesView)
        
        //底部红色指示器
        let indicatorView = UIView()
        indicatorView.backgroundColor = DTGlobalRedColor()
        indicatorView.height = kIndicatorViewH
        indicatorView.frame.origin.y = kTitlesViewH - kIndicatorViewH
        self.indicatorView = indicatorView
        
        let arrowBtn = UIButton()
        arrowBtn.frame = CGRectMake(SCREENW - kTitlesViewH, 0, kTitlesViewH, kTitlesViewH)
        arrowBtn.setImage(UIImage(named: "arrow_index_down_8x4_"), forState: .Normal)
        arrowBtn.addTarget(self, action: #selector(arrowButtonClick(_:)), forControlEvents: .TouchUpInside)
        arrowBtn.backgroundColor = DTGlobalColor()
        bgView.addSubview(arrowBtn)
        
        //内部子标签
        
        let count = childViewControllers.count
        let width = titlesView.width / CGFloat(count)
        let height = titlesView.height
        
        for index in 0..<count{
            let btn = UIButton()
            btn.height = height
            btn.width = width
            btn.frame.origin.x = CGFloat(index) * width
            btn.tag = index
            
            let vc = childViewControllers[index]
            btn.titleLabel?.font = UIFont.systemFontOfSize(14)
            btn.setTitle(vc.title, forState: .Normal)
            btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
            btn.setTitleColor(DTGlobalRedColor(), forState: .Disabled)
            btn.addTarget(self, action: #selector(titlesClick(_:)), forControlEvents: .TouchUpInside)
            titlesView.addSubview(btn)
            

            //默认点击第一个按钮
            if index == 0 {
              
                btn.enabled = false
                selectedBtn = btn
                //让按钮内部的Label根据文字来计算内容, 否则得不到titleLabel的width
                btn.titleLabel?.sizeToFit()
               
                //
                indicatorView.width = btn.titleLabel!.width
                indicatorView.center.x = btn.center.x
            }
        }
        titlesView.addSubview(indicatorView)
        self.titlesView = titlesView
        
    }
    
    func setupContentView(){
    
        automaticallyAdjustsScrollViewInsets = false
        
        let contentView = UIScrollView()
        contentView.frame = view.bounds
        contentView.delegate = self
        contentView.contentSize = CGSizeMake(contentView.width * CGFloat(childViewControllers.count), contentView.height)
  
        view.insertSubview(contentView, atIndex: 0)
        contentView.pagingEnabled = true
        self.contentView = contentView
        scrollViewDidEndScrollingAnimation(contentView)
        
        
        
    
    
    
    
    }
 
    
    func titlesClick(btn:UIButton) {
        selectedBtn.enabled = true
        btn.enabled = false
        selectedBtn = btn
        
        UIView.animateWithDuration(kAnimationDuration) { 
         self.indicatorView.width = self.selectedBtn.titleLabel!.width
         self.indicatorView.center.x = self.selectedBtn.center.x
        }
        
 
        contentView.setContentOffset(CGPoint(x: CGFloat(btn.tag) * contentView.width, y: 0), animated: true)
        
        
        
        
    }
    
    func arrowButtonClick(btn:UIButton){
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


extension DTHomeViewController:UIScrollViewDelegate {
    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView) {
   
        let index = Int(scrollView.contentOffset.x / scrollView.width)
        
        let vc = childViewControllers[index]

        vc.view.frame.origin.x = scrollView.contentOffset.x
        //设置控制器的Y为0，默认为20
        vc.view.frame.origin.y = 0
        
        scrollView.addSubview(vc.view)
        
        
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        scrollViewDidEndScrollingAnimation(scrollView)
        // 当前索引
 
        let index = Int(scrollView.contentOffset.x / scrollView.width)
        // 点击 Button
        let button = titlesView.subviews[index] as! UIButton
        titlesClick(button)
    }

  

}
