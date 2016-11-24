//
//  DTProductDetailViewController.swift
// DuoTang
//
//  Created by Dwysen on 16/10/29.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class DTProductDetailViewController: UIViewController {

    var pruduct:DTProductData?
    
    private lazy var scrollView:DTDetailScrollView = {
        let scrollView = DTDetailScrollView()
        return scrollView
    }()
    
    private lazy var toolBarView:DTProductDetailToolBar = {
        let toolBarView = NSBundle.mainBundle().loadNibNamed("DTProductDetailToolBar", owner: nil,options: nil).last as! DTProductDetailToolBar
        
        return toolBarView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }

    func setupUI(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "GiftShare_icon_18x22_"), style: .Plain, target: self, action: #selector(shareButtonClick))
        toolBarView.frame = CGRectMake(0, SCREENH - 45, SCREENW, 45)
        view.addSubview(toolBarView)
        scrollView.frame = CGRectMake(0, 64, SCREENW, SCREENH - 64 - 45)
        scrollView.contentSize = CGSize(width: SCREENW, height: SCREENH - 64 - 45 + kMargin + 520)
        scrollView.product = pruduct
        view.addSubview(scrollView)
  
    
    }
    func shareButtonClick(){
    DTActionSheet.show()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
