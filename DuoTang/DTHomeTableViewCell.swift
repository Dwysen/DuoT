//
//  DTHomeTableViewCell.swift
// DuoTang
//
//  Created by Dwysen on 16/10/27.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit
import Kingfisher

class DTHomeTableViewCell: UITableViewCell {

    var bgImageView: UIImageView!
    var titleLabel:UILabel!
    var likeBtn:UIButton!
    
    var item:DTItem?{
        didSet {
            bgImageView.kf_setImageWithURL(NSURL(string: item!.coverImageUrl)!)
            titleLabel.text = item?.title
            likeBtn.setTitle("\(item!.likesCount!)", forState: .Normal)
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: SCREENW - 20 , height: 130))
        bgImageView.layer.cornerRadius = kCornerRadius
        bgImageView.layer.masksToBounds = true
        addSubview(bgImageView!)
        titleLabel = UILabel(frame: CGRect(x: 15, y: 115, width: SCREENW, height: 20))
        
        titleLabel.textColor = UIColor.whiteColor()
        addSubview(titleLabel)
        bringSubviewToFront(titleLabel)
        
        likeBtn = UIButton(frame: CGRect(x: SCREENW - 70, y: 15, width: 60, height: 25))
        likeBtn.setImage(UIImage(named: "Feed_FavoriteIcon_17x17_"), forState: .Normal)
        likeBtn.titleLabel?.font = UIFont.systemFontOfSize(12)
        likeBtn.layer.cornerRadius = 30
        likeBtn.layer.masksToBounds = true
        likeBtn.backgroundColor = UIColor.blackColor()
        likeBtn.alpha = 0.5
        
        bringSubviewToFront(likeBtn)
        addSubview(likeBtn)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
