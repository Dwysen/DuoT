//
//  ProductDetailCollectionViewCell.swift
// DuoTang
//
//  Created by Dwysen on 16/10/31.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit
import Kingfisher

class ProductDetailCollectionViewCell: UICollectionViewCell {
    
    var imgUrl:String?{
        didSet{
            ImageView.kf_setImageWithURL(NSURL(string: imgUrl!)!)
        
        }
    }

    override init(frame: CGRect) {
        super.init(frame:frame)
        addSubview(ImageView)

        
    }
    private lazy var ImageView:UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: SCREENW, height: 375))
        return imageView
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
