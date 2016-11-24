//
//  DTProductDetailBottomView.swift
// DuoTang
//
//  Created by Dwysen on 16/10/31.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class DTProductDetailBottomView: UIView {
    
    var comments = [DTComment]()
    var product:DTProductData?{
        didSet{
            
//              weak var weakSelf = self
            DTNetworkTool.shareNetworkTool.loadProductDetailData((product?.id)!) { (productDetail) in
                self.webView.loadHTMLString(productDetail.detailHtml, baseURL: nil)
                self.commentBtn.setTitle("评论(\(productDetail.commentsCount))", forState: .Normal)
            }
            
            DTNetworkTool.shareNetworkTool.loadProductDetailComments((product?.id)!) { (comments) in
                
                self.comments = comments
                self.tableView.reloadData()
         
                
             
                
                
                
            }
            
        }
        
    }
    private lazy var introduceBtn:UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: SCREENW / 2, height: 45))
        btn.addTarget(self, action: #selector(introduceBtnClick), forControlEvents: .TouchUpInside)
        btn.setTitle("图文介绍", forState: .Normal)
        btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
        return btn
        
    }()
    
    private lazy var commentBtn:UIButton = {
        let btn = UIButton(frame: CGRect(x: SCREENW / 2, y: 0, width: SCREENW / 2, height: 45))
        btn.addTarget(self, action: #selector(commentBtnClick), forControlEvents: .TouchUpInside)
        btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
        return btn
        
    }()
    
    private lazy var webView:UIWebView = {
        let webView = UIWebView(frame: CGRect(x: 0, y: 45, width: SCREENW, height: self.height - 45))
        return webView
    }()
    
    private lazy var tableView:UITableView = {
        let tableView = UITableView(frame: CGRect(x: 0, y: 45, width: SCREENW, height: self.height - 45))
        
        return tableView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(introduceBtn)
        addSubview(commentBtn)
        addSubview(webView)
        webView.scalesPageToFit = true
        
        
        
        addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerNib(UINib(nibName: "DTProductBottomTableViewCell", bundle: nil), forCellReuseIdentifier: "DTProductBottomTableViewCell")
        tableView.hidden = true
        tableView.rowHeight = 100
        
        
    }
    
    func introduceBtnClick(){
        
        webView.hidden = false
        tableView.hidden = true
        
    }
    
    func commentBtnClick(){
        
        tableView.hidden = false
        webView.hidden = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension DTProductDetailBottomView:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  comments.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DTProductBottomTableViewCell", forIndexPath: indexPath) as!DTProductBottomTableViewCell
        cell.comment = comments[indexPath.row]
        return cell
        
    }
    
    
}
