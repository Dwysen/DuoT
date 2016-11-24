//
//	DTItem.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class DTItem : NSObject, NSCoding{

	var contentUrl : String!
	var coverImageUrl : String!
	var createdAt : Int!
	var editorId : AnyObject!
	var id : Int!
	var labels : [AnyObject]!
	var liked : Bool!
	var likesCount : Int!
	var publishedAt : Int!
	var shareMsg : String!
	var shortTitle : String!
	var status : Int!
	var template : String!
	var title : String!
	var type : String!
	var updatedAt : Int!
	var url : String!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		contentUrl = dictionary["content_url"] as? String
		coverImageUrl = dictionary["cover_image_url"] as? String
		createdAt = dictionary["created_at"] as? Int
		editorId = dictionary["editor_id"]
		id = dictionary["id"] as? Int
		labels = dictionary["labels"] as? [AnyObject]
		liked = dictionary["liked"] as? Bool
		likesCount = dictionary["likes_count"] as? Int
		publishedAt = dictionary["published_at"] as? Int
		shareMsg = dictionary["share_msg"] as? String
		shortTitle = dictionary["short_title"] as? String
		status = dictionary["status"] as? Int
		template = dictionary["template"] as? String
		title = dictionary["title"] as? String
		type = dictionary["type"] as? String
		updatedAt = dictionary["updated_at"] as? Int
		url = dictionary["url"] as? String
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if contentUrl != nil{
			dictionary["content_url"] = contentUrl
		}
		if coverImageUrl != nil{
			dictionary["cover_image_url"] = coverImageUrl
		}
		if createdAt != nil{
			dictionary["created_at"] = createdAt
		}
		if editorId != nil{
			dictionary["editor_id"] = editorId
		}
		if id != nil{
			dictionary["id"] = id
		}
		if labels != nil{
			dictionary["labels"] = labels
		}
		if liked != nil{
			dictionary["liked"] = liked
		}
		if likesCount != nil{
			dictionary["likes_count"] = likesCount
		}
		if publishedAt != nil{
			dictionary["published_at"] = publishedAt
		}
		if shareMsg != nil{
			dictionary["share_msg"] = shareMsg
		}
		if shortTitle != nil{
			dictionary["short_title"] = shortTitle
		}
		if status != nil{
			dictionary["status"] = status
		}
		if template != nil{
			dictionary["template"] = template
		}
		if title != nil{
			dictionary["title"] = title
		}
		if type != nil{
			dictionary["type"] = type
		}
		if updatedAt != nil{
			dictionary["updated_at"] = updatedAt
		}
		if url != nil{
			dictionary["url"] = url
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         contentUrl = aDecoder.decodeObjectForKey("content_url") as? String
         coverImageUrl = aDecoder.decodeObjectForKey("cover_image_url") as? String
         createdAt = aDecoder.decodeObjectForKey("created_at") as? Int
         editorId = aDecoder.decodeObjectForKey("editor_id")
         id = aDecoder.decodeObjectForKey("id") as? Int
         labels = aDecoder.decodeObjectForKey("labels") as? [AnyObject]
         liked = aDecoder.decodeObjectForKey("liked") as? Bool
         likesCount = aDecoder.decodeObjectForKey("likes_count") as? Int
         publishedAt = aDecoder.decodeObjectForKey("published_at") as? Int
         shareMsg = aDecoder.decodeObjectForKey("share_msg") as? String
         shortTitle = aDecoder.decodeObjectForKey("short_title") as? String
         status = aDecoder.decodeObjectForKey("status") as? Int
         template = aDecoder.decodeObjectForKey("template") as? String
         title = aDecoder.decodeObjectForKey("title") as? String
         type = aDecoder.decodeObjectForKey("type") as? String
         updatedAt = aDecoder.decodeObjectForKey("updated_at") as? Int
         url = aDecoder.decodeObjectForKey("url") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encodeWithCoder(aCoder: NSCoder)
	{
		if contentUrl != nil{
			aCoder.encodeObject(contentUrl, forKey: "content_url")
		}
		if coverImageUrl != nil{
			aCoder.encodeObject(coverImageUrl, forKey: "cover_image_url")
		}
		if createdAt != nil{
			aCoder.encodeObject(createdAt, forKey: "created_at")
		}
		if editorId != nil{
			aCoder.encodeObject(editorId, forKey: "editor_id")
		}
		if id != nil{
			aCoder.encodeObject(id, forKey: "id")
		}
		if labels != nil{
			aCoder.encodeObject(labels, forKey: "labels")
		}
		if liked != nil{
			aCoder.encodeObject(liked, forKey: "liked")
		}
		if likesCount != nil{
			aCoder.encodeObject(likesCount, forKey: "likes_count")
		}
		if publishedAt != nil{
			aCoder.encodeObject(publishedAt, forKey: "published_at")
		}
		if shareMsg != nil{
			aCoder.encodeObject(shareMsg, forKey: "share_msg")
		}
		if shortTitle != nil{
			aCoder.encodeObject(shortTitle, forKey: "short_title")
		}
		if status != nil{
			aCoder.encodeObject(status, forKey: "status")
		}
		if template != nil{
			aCoder.encodeObject(template, forKey: "template")
		}
		if title != nil{
			aCoder.encodeObject(title, forKey: "title")
		}
		if type != nil{
			aCoder.encodeObject(type, forKey: "type")
		}
		if updatedAt != nil{
			aCoder.encodeObject(updatedAt, forKey: "updated_at")
		}
		if url != nil{
			aCoder.encodeObject(url, forKey: "url")
		}

	}

}