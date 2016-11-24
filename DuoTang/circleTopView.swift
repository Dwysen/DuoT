//
//  circleTopView.swift
// DuoTang
//
//  Created by Dwysen on 16/9/21.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

protocol DidClickSeeAllBtnProtocol:NSObjectProtocol{
    func didCilckSeeAllBtn(btn:UIButton)
}

class circleTopView: UIView {
    
    // ?
    // 若此delegate弱引用(weak), 顶部的collectioncell就显示不出来了。
    
    // ?

    
    // 解决办法： 在circleViewController里加上代码：
    // let vc = circleHeaderViewController
    // addChildViewController(vc)
     weak var delegate:DidClickSeeAllBtnProtocol?
    
    @IBAction func cilckSeeAllBtn(sender: UIButton) {
        delegate?.didCilckSeeAllBtn(sender)
    }
}
