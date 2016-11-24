//
//  YMMeFooterView.swift
//  DanTang
//
//  Created by 杨蒙 on 16/7/24.
//  Copyright © 2016年 hrscy. All rights reserved.
//

import UIKit


class meVCFooterView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
   
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        
        

        
        addSubview(meBlankButton)
        
        addSubview(messageLabel)
        
                }
    
    
    private lazy var meBlankButton: UIButton = {
        let meBlankButton = UIButton()
  
   
        meBlankButton.frame = CGRect(x: SCREEN_WIDTH / 2 - 25, y: 75, width: 50, height: 50)

        meBlankButton.titleLabel?.font = UIFont.systemFontOfSize(15)
        meBlankButton.setImage(UIImage(named: "Me_blank_50x50_"), forState: .Normal)
        meBlankButton.addTarget(self, action: #selector(footerViewButtonClick), forControlEvents: .TouchUpInside)
        meBlankButton.imageView?.sizeToFit()
        return meBlankButton
    }()
    
    private lazy var messageLabel: UILabel = {
        let messageLabel = UILabel()
        messageLabel.frame =  CGRect(x: 0, y: 140, width: SCREEN_WIDTH, height: 20)
        messageLabel.text = "登录以享受功能"
        messageLabel.textAlignment = .Center
        messageLabel.font = UIFont.systemFontOfSize(15)
        messageLabel.textColor = UIColor.lightGrayColor()
    
        return messageLabel
    }()
    
    
    func footerViewButtonClick() {

    }
    
}
