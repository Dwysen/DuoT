//
//  DTNavigationController.swift
// DuoTang
//
//  Created by Dwysen on 16/10/24.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

class DTNavigationController: UINavigationController {
    internal override class func initialize(){
     super.initialize()
    let navBar = UINavigationBar.appearance()
        navBar.barTintColor = DTGlobalRedColor()
        navBar.tintColor = UIColor.whiteColor()
    //  NSForegroundColorAttributeName:UIColor.whiteColor(),
        navBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFontOfSize(20)]
    }
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "checkUserType_backward_9x15_"), style: .Plain, target: self, action: #selector(navigationBackClick))
        }
        super.pushViewController(viewController, animated: true)
    }
    func navigationBackClick(){
        if UIApplication.sharedApplication().networkActivityIndicatorVisible{
           UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        }
        popViewControllerAnimated(true)
    
    }
    
}