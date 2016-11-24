//
//  DTNetworkTool.swift
// DuoTang
//
//  Created by Dwysen on 16/10/24.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class DTNetworkTool:NSObject {
    
    static let shareNetworkTool = DTNetworkTool()
    
    func loadButton(finished:(outGroups:[AnyObject])->()) {
        let BASE_URL = "http://api.dantangapp.com/"
        let url = BASE_URL + "v1/channel_groups/all"
        Alamofire
            .request(.GET, url)
            .responseJSON { (response) in
                guard response.result.isSuccess else {
                    ProgressHUD.showError("加载失败...")
                    return
                }
                if let value = response.result.value {
                    let dict = JSON(value)
                    let code = dict["code"].intValue
                    let message = dict["message"].stringValue
                    guard code == 200 else {
                        ProgressHUD.showError(message)
                        return
                    }
                    ProgressHUD.dismiss()
                    if let data = dict["data"].dictionary {
                        if let channel_groups = data["channel_groups"]?.arrayObject{
                            
                            var outGroups = [AnyObject]()
                            for channel_group in channel_groups {
                                var inGroups = [DTChannel]()
                                let channels = channel_group["channels"] as! [AnyObject]
                                for channel in channels{
                                    let dtchannel = DTChannel(fromDictionary: channel as! NSDictionary)
                                    inGroups.append(dtchannel)
                                }
                                outGroups.append(inGroups)
                            }
                            finished(outGroups: outGroups)
                        }
                    }
                    
                    
                }
        }}
    
    
    //
    
    func loadHomeItem(id:Int,finished:(item:[DTItem]) -> () ) {
        let BASE_URL = "http://api.dantangapp.com/"
        let url = BASE_URL + "v1/channels/\(id)/items"
        let params = ["gender": 1,
                      "generation": 1,
                      "limit":20,
                      "offset":0]
        
        Alamofire.request(.GET, url, parameters: params).responseJSON { (response) in
            
            guard response.result.isSuccess else {
                ProgressHUD.showError("加载失败")
                return
            }
            if let value = response.result.value {
                let dict = JSON(value)
                let code = dict["code"].intValue
                let message = dict["message"].stringValue
                guard code == 200 else {
                    ProgressHUD.showError(message)
                    return
                }
                ProgressHUD.dismiss()
                if let data = dict["data"].dictionary{
                    if let collectionsData = data["items"]?.arrayObject{
                        var collecitons = [DTItem]()
                        for item in collectionsData {
                            let collection = DTItem(fromDictionary: item as! [String:AnyObject] )
                            collecitons.append(collection)
                            
                        }
                        finished(item: collecitons)
                        
                    }
                }
            }
        }
        
        //              return collecitons
    }
    
    
    
    
    
    func loadCollection(finished:(collections:[DTCollection]) -> () ) {
        let BASE_URL = "http://api.dantangapp.com/"
        let url = BASE_URL + "v1/collections"
        let params = ["limit": 6,
                      "offset": 0]
        
        Alamofire.request(.GET, url, parameters: params).responseJSON { (response) in
            
            guard response.result.isSuccess else {
                ProgressHUD.showError("加载失败")
                return
            }
            if let value = response.result.value {
                let dict = JSON(value)
                let code = dict["code"].intValue
                let message = dict["message"].stringValue
                guard code == 200 else {
                    ProgressHUD.showError(message)
                    return
                }
                ProgressHUD.dismiss()
                if let data = dict["data"].dictionary{
                    if let collectionsData = data["collections"]?.arrayObject{
                        var collecitons = [DTCollection]()
                        for item in collectionsData {
                            let collection = DTCollection(fromDictionary: item as! [String:AnyObject] )
                            collecitons.append(collection)
                            
                        }
                        finished(collections: collecitons)
                        
                    }
                }
            }
        }
        
        //              return collecitons
    }
    
    
    func loadCollectionPost(id:Int,finished:(collectionposts:[DTCollecitonPost]) -> () ) {
        let BASE_URL = "http://api.dantangapp.com/"
        let url = BASE_URL + "v1/collections/\(id)/posts"
        let params = ["gender": 1,
                      "generation": 1,
                      "limit":20,
                      "offset":0]
        
        Alamofire.request(.GET, url, parameters: params).responseJSON { (response) in
            
            guard response.result.isSuccess else {
                ProgressHUD.showError("加载失败")
                return
            }
            if let value = response.result.value {
                let dict = JSON(value)
                let code = dict["code"].intValue
                let message = dict["message"].stringValue
                guard code == 200 else {
                    ProgressHUD.showError(message)
                    return
                }
                ProgressHUD.dismiss()
                if let data = dict["data"].dictionary{
                    if let collectionsPostsData = data["posts"]?.arrayObject{
                        var collecitonPosts = [DTCollecitonPost]()
                        for item in collectionsPostsData {
                            let post = DTCollecitonPost(fromDictionary: item as! [String:AnyObject] )
                            collecitonPosts.append(post)
                        }
                        finished(collectionposts: collecitonPosts)
                        
                    }
                }
            }
        }
        
        //              return collecitons
        
    }
    
    
    //
    
    
    func loadChannels(id:Int,finished:(collectionposts:[DTCollecitonPost]) -> () ) {
        let BASE_URL = "http://api.dantangapp.com/"
        let url = BASE_URL + "v1/channels/\(id)/items"
        let params = ["limit":20,
                      "offset":0]
        
        Alamofire.request(.GET, url, parameters: params).responseJSON { (response) in
            
            guard response.result.isSuccess else {
                ProgressHUD.showError("加载失败")
                return
            }
            if let value = response.result.value {
                let dict = JSON(value)
                let code = dict["code"].intValue
                let message = dict["message"].stringValue
                guard code == 200 else {
                    ProgressHUD.showError(message)
                    return
                }
                ProgressHUD.dismiss()
                if let data = dict["data"].dictionary{
                    if let collectionsPostsData = data["items"]?.arrayObject{
                        var collecitonPosts = [DTCollecitonPost]()
                        for item in collectionsPostsData {
                            let post = DTCollecitonPost(fromDictionary: item as! [String:AnyObject] )
                            collecitonPosts.append(post)
                        }
                        finished(collectionposts: collecitonPosts)
                        
                    }
                }
            }
        }
        
        //              return collecitons
        
    }
    
    
    func loadProductItems(finished:(items:[DTProductData]) -> () ) {
        let BASE_URL = "http://api.dantangapp.com/"
        let url = BASE_URL + "v2/items"
        let params = ["gender": 1,
                      "generation": 1,
                      "limit":20,
                      "offset":0]
        
        Alamofire.request(.GET, url, parameters: params).responseJSON { (response) in
            
            guard response.result.isSuccess else {
                ProgressHUD.showError("加载失败")
                return
            }
            if let value = response.result.value {
                let dict = JSON(value)
                let code = dict["code"].intValue
                let message = dict["message"].stringValue
                guard code == 200 else {
                    ProgressHUD.showError(message)
                    return
                }
                ProgressHUD.dismiss()
                if let data = dict["data"].dictionary{
                    if let items = data["items"]?.arrayObject{
                        var dt_item = [DTProductData]()
                        for item in items {
                            if let itemdata = item["data"]  {
                                let product = DTProductData(fromDictionary: itemdata as! [String:AnyObject] )
                                dt_item.append(product)
                             
                            }
                            
                        }
                        finished(items: dt_item)
                        
                    }
                }
            }
        }
        
        //              return collecitons
        
    }
    
    
    
    
    
    //
    func loadHomeChannels(finished:(DanTangChannel:[DanTangChannel]) -> () ) {
        let BASE_URL = "http://api.dantangapp.com/"
        let url = BASE_URL + "v2/channels/preset"
        let params = ["gender": 1,
                      "generation": 1]
        
        Alamofire.request(.GET, url, parameters: params).responseJSON { (response) in
            
            guard response.result.isSuccess else {
                ProgressHUD.showError("加载失败")
                return
            }
            if let value = response.result.value {
                let dict = JSON(value)
                let code = dict["code"].intValue
                let message = dict["message"].stringValue
                guard code == 200 else {
                    ProgressHUD.showError(message)
                    return
                }
                ProgressHUD.dismiss()
                if let data = dict["data"].dictionary{
                    if let channels = data["channels"]?.arrayObject{
                        var dt_channels = [DanTangChannel]()
                        for item in channels {
                            let post = DanTangChannel(dict: item as! [String:AnyObject] )
                            dt_channels.append(post)
                        }
                        finished(DanTangChannel: dt_channels)
                        
                    }
                }
            }
        }
        
        //              return collecitons
        
    }
    
    
    
    
    func loadProductDetailData(id:Int,finished:(DTProductDetailData:DTProductDetailData) -> () ) {
        let BASE_URL = "http://api.dantangapp.com/"
        let url = BASE_URL + "v2/items/\(id)"
        
        
        Alamofire.request(.GET, url, parameters: nil).responseJSON { (response) in
            
            guard response.result.isSuccess else {
                ProgressHUD.showError("加载失败")
                return
            }
            if let value = response.result.value {
                let dict = JSON(value)
                let code = dict["code"].intValue
                let message = dict["message"].stringValue
                guard code == 200 else {
                    ProgressHUD.showError(message)
                    return
                }
                ProgressHUD.dismiss()
                if let data = dict["data"].dictionaryObject{
                    let DTproduct = DTProductDetailData(fromDictionary: data)
                    finished(DTProductDetailData: DTproduct)
                }
            }
        }
        
        //              return collecitons
        
    }
    
    
    func loadProductDetailComments(id:Int,finished:(DTComments:[DTComment]) -> () ) {
        let BASE_URL = "http://api.dantangapp.com/"
        let url = BASE_URL + "v2/items/\(id)/comments"
        let params = ["limit": 20,
                      "offset": 0]
        
        
        Alamofire.request(.GET, url, parameters: params).responseJSON { (response) in
            
            guard response.result.isSuccess else {
                ProgressHUD.showError("加载失败")
                return
            }
            if let value = response.result.value {
                let dict = JSON(value)
                let code = dict["code"].intValue
                let message = dict["message"].stringValue
                guard code == 200 else {
                    ProgressHUD.showError(message)
                    return
                }
                ProgressHUD.dismiss()
                if let data = dict["data"].dictionary{
                    if let comment = data["comments"]?.arrayObject
                    {
                        var comments = [DTComment]()
                        for item in comment{
                            let dt_comment = DTComment(fromDictionary: item as! [String:AnyObject])
                            comments.append(dt_comment)
                        }
                        
                        finished(DTComments: comments)
                    }
                }
            }
        }
        
        //              return collecitons
        
    }

    
    
    
    
    
    
    
}