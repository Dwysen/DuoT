//
//  circleTopCollectionCell.swift
// DuoTang
//
//  Created by Dwysen on 16/9/21.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit
import Kingfisher

class circleTopCollectionCell: UICollectionViewCell {

    var collection:DTCollection?{
        didSet{
            let url = collection?.bannerImageUrl
            imageView?.kf_setImageWithURL(NSURL(string: url!)!)
                }
    }
    var imageView: UIImageView?

    override func awakeFromNib() {
       
        imageView = UIImageView(frame: self.bounds)
        self.addSubview(imageView!)
        layer.cornerRadius = 10
        layer.masksToBounds = true
        super.awakeFromNib()
//        backgroundColor = UIColor.greenColor()
//        alpha = 0.8
      }

}
