//
//  DTActionSheet.swift
// DuoTang
//
//  Created by Dwysen on 16/11/3.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class DTActionSheet: UIView {

    class func show(){
        let actionSheet = DTActionSheet(frame: UIScreen.mainScreen().bounds)
            actionSheet.backgroundColor = DTColor(0, g: 0, b: 0, a: 0.6)
        
        let window = UIApplication.sharedApplication().keyWindow
        window?.addSubview(actionSheet)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        
    }
    
    func setupUI(){
        addSubview(bgView)
    
        
        topView.frame = CGRectMake(10, 10, SCREENW - 20, 200)
        bgView.addSubview(topView)
        
        cancelButton.frame = CGRectMake(10, 220, SCREENW - 20 , 50)
        bgView.addSubview(cancelButton)
        
        shareLabel.frame = CGRectMake(0, 0, SCREENW, 30)
        topView.addSubview(shareLabel)
        
        topView.addSubview(shareButtonView)
        
        
  
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        UIView.animateWithDuration(kAnimationDuration) {
            self.bgView.frame.origin.y = SCREENH - self.bgView.height
        }
    }
    
    private lazy var bgView: UIView = {
        let bgView = UIView()
        bgView.frame = CGRectMake(0, SCREENH, SCREENW, 280)
        return bgView
    }()

    private lazy var topView:UIView = {
        let topView = UIView()
        topView.backgroundColor = UIColor.whiteColor()
        topView.layer.cornerRadius = kCornerRadius
        topView.layer.masksToBounds = true
        return topView
        
    }()
    
    private lazy var shareLabel: UILabel = {
        let shareLabel = UILabel()
        shareLabel.text = "分享到"
        shareLabel.textColor = DTColor(0, g: 0, b: 0, a: 0.7)
        shareLabel.textAlignment = .Center
        return shareLabel
    }()
    
    private lazy var shareButtonView:DTActionSheetShareView = {
        let shareButtonView = DTActionSheetShareView(frame: CGRect(x: 10, y: 30, width: SCREENW - 20, height: 170))
        return shareButtonView
    }()
    
    private lazy var cancelButton: UIButton = {
        let cancelButton = UIButton()
        cancelButton.setTitle("取消", forState: .Normal)
        cancelButton.titleLabel?.font = UIFont.systemFontOfSize(18)
        cancelButton.setTitleColor(DTColor(37, g: 142, b: 240, a: 1.0), forState: .Normal)
        cancelButton.backgroundColor = UIColor.whiteColor()
        cancelButton.addTarget(self, action: #selector(cancelButtonClick), forControlEvents: .TouchUpInside)
        cancelButton.layer.cornerRadius = kCornerRadius
        cancelButton.layer.masksToBounds = true
        return cancelButton
    }()
    
    func cancelButtonClick() {
        UIView.animateWithDuration(kAnimationDuration, animations: { 
            self.bgView.frame.origin.y = SCREENH
            }) { (_) in
                self.removeFromSuperview()
        }
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        UIView.animateWithDuration(kAnimationDuration, animations: {
            self.bgView.frame.origin.y = SCREENH
        }) { (_) in
            self.removeFromSuperview()
        }
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    

}
