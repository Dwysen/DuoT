//
//  YMMeChoiceView.swift
//  DanTang
//
//  Created by 杨蒙 on 16/7/24.
//  Copyright © 2016年 hrscy. All rights reserved.
//

import UIKit

class meChoiceView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        // 左边的按钮
         addSubview(leftButton)
        // 右边的按钮
        addSubview(rightButton)
        // 底部红色条
        addSubview(indicatorView)
        
           }
    
    /// 左边的按钮
    private lazy var leftButton: UIButton = {
        let leftButton = UIButton()
       
        leftButton.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH / 2, height: 50)
        leftButton.setTitle("喜欢的商品", forState: .Normal)
        leftButton.titleLabel?.font = UIFont.systemFontOfSize(16)
        leftButton.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 0.7), forState: .Normal)
        leftButton.backgroundColor = UIColor.whiteColor()
        leftButton.addTarget(self, action: #selector(leftButtonClick(_:)), forControlEvents: .TouchUpInside)
        leftButton.layer.borderColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).CGColor
        leftButton.layer.borderWidth = 1
        leftButton.selected = true
        return leftButton
    }()
    
    /// 右边的按钮
    private lazy var rightButton: UIButton = {
        let rightButton = UIButton()
        rightButton.frame = CGRect(x: SCREEN_WIDTH / 2, y: 0, width: SCREEN_WIDTH / 2, height: 50)
        rightButton.setTitle("喜欢的专题", forState: .Normal)
        rightButton.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 0.7), forState: .Normal)
        rightButton.titleLabel?.font = UIFont.systemFontOfSize(16)
        rightButton.backgroundColor = UIColor.whiteColor()
        rightButton.addTarget(self, action: #selector(rightButtonClick(_:)), forControlEvents: .TouchUpInside)
        rightButton.layer.borderColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).CGColor
        rightButton.layer.borderWidth = 1
        return rightButton
    }()
    
    /// 底部红色条
    private lazy var indicatorView: UIView = {
        let indicatorView = UIView()
        indicatorView.frame = CGRect(x: 0, y: 48, width: SCREEN_WIDTH / 2 , height: 2)
        indicatorView.backgroundColor = UIColor.redColor()
        return indicatorView
    }()
    
    func leftButtonClick(button: UIButton) {
        button.selected = !button.selected
        UIView.animateWithDuration(0.25) {
            self.indicatorView.origin.x = 0
        }
    }
    
    func rightButtonClick(button: UIButton) {
        button.selected = !button.selected
        UIView.animateWithDuration(0.25) {
            self.indicatorView.origin.x = SCREEN_WIDTH * 0.5
        }
    }
}
