//
//  DTPostDetailViewController.swift
// DuoTang
//
//  Created by Dwysen on 16/10/24.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class DTPostDetailViewController: UIViewController {

    
    var type = String()
    var item:DTItem!
    var post:DTCollecitonPost!
    var webView:UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView = UIWebView(frame: view.bounds)
        webView.scalesPageToFit = true
        
        //自动检测,电话号码，网址等可点击
        webView.dataDetectorTypes = .All
        
        view.addSubview(webView)
        
        if type == "HomeItem" {
            
            let request = NSURLRequest(URL: NSURL(string: item.url)!)
            webView.loadRequest(request)
        
        } else {
        let request = NSURLRequest(URL: NSURL(string: post.url)!)
        webView.loadRequest(request)
        }
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension DTPostDetailViewController:UIWebViewDelegate {

    func webViewDidStartLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }


}
