//
//  DTDetailScrollView.swift
// DuoTang
//
//  Created by Dwysen on 16/10/29.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class DTDetailScrollView: UIScrollView {

    var product:DTProductData? {
        didSet{
            DetailTopView.product = product
            DetailBottomView.product = product
        }
    
    }
    private lazy var DetailBottomView:DTProductDetailBottomView = {
        let view = DTProductDetailBottomView(frame: CGRect(x: 0, y: 530, width: SCREENW, height: SCREENH - 64 - 45))
        return view
    }()
    
    private lazy var DetailTopView:DTProductDetailTopView = {
        let view = DTProductDetailTopView(frame: CGRect(x: 0, y: 0, width: SCREENW, height: 520))
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(DetailBottomView)
        addSubview(DetailTopView )
        backgroundColor = DTGlobalColor()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    


}
