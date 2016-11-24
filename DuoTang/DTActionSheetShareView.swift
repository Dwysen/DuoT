//
//  DTActionSheetShareView.swift
// DuoTang
//
//  Created by Dwysen on 16/11/3.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class DTActionSheetShareView: UIView {
    
    // 图片数组
    let images = ["Share_WeChatTimelineIcon_70x70_", "Share_WeChatSessionIcon_70x70_", "Share_WeiboIcon_70x70_", "Share_QzoneIcon_70x70_", "Share_QQIcon_70x70_", "Share_CopyLinkIcon_70x70_"]
    // 标题数组
    let titles = ["微信朋友圈", "微信好友", "微博", "QQ 空间", "QQ 好友", "复制链接"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    func setupUI(){
        
        let maxCols = 3
        let btnW:CGFloat = 70
        let btnH:CGFloat = 85
        let btnStartX:CGFloat = 20
        let xMargin:CGFloat = (SCREENW - CGFloat(maxCols) * btnW - 2 * btnStartX - 20 ) / CGFloat(maxCols - 1)
        
       
        for index in 0 ..< images.count {
            let button = DTActionSheetShareButton()
            button.tag = index
            button.setImage(UIImage(named: images[index]), forState: .Normal)
            button.setTitle(titles[index], forState: .Normal)
            button.setTitleColor(UIColor.blackColor(), forState: .Normal)
            button.titleLabel?.font = UIFont.systemFontOfSize(14)
            button.width = btnW
            button.height = btnH
            button.addTarget(self, action: #selector(shareButtonClick), forControlEvents: .TouchUpInside)
            
            let col = index % maxCols
            let row = Int(index/maxCols)
            let buttonX = btnStartX + CGFloat(col) * btnW +   CGFloat(col) * xMargin
            let buttonY = CGFloat(row) * btnH
            
            button.frame = CGRectMake(buttonX, buttonY, btnW, btnH)
            addSubview(button)
        }
    }
    
    func shareButtonClick(){
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    

    

}
