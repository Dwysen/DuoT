//
//  DTActionSheetShareButton.swift
// DuoTang
//
//  Created by Dwysen on 16/11/3.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class DTActionSheetShareButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel?.textAlignment = .Center
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView?.frame.origin.x = 10
        imageView?.frame.origin.y = 0
        imageView?.width = self.width - 20
        imageView?.height = imageView!.width
    
        
        titleLabel?.frame.origin.y =  imageView!.height
        titleLabel?.frame.origin.x =  0
        titleLabel?.width = self.width
        titleLabel?.height = self.height - imageView!.height
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
