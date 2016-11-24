//
//	DTRepliedComment.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class DTRepliedComment : NSObject, NSCoding{

	var content : String!
	var createdAt : Int!
	var id : Int!
	var itemId : Int!
	var replyToId : AnyObject!
	var show : Bool!
	var status : Int!
	var userId : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		content = dictionary["content"] as? String
		createdAt = dictionary["created_at"] as? Int
		id = dictionary["id"] as? Int
		itemId = dictionary["item_id"] as? Int
		replyToId = dictionary["reply_to_id"] 
		show = dictionary["show"] as? Bool
		status = dictionary["status"] as? Int
		userId = dictionary["user_id"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if content != nil{
			dictionary["content"] = content
		}
		if createdAt != nil{
			dictionary["created_at"] = createdAt
		}
		if id != nil{
			dictionary["id"] = id
		}
		if itemId != nil{
			dictionary["item_id"] = itemId
		}
		if replyToId != nil{
			dictionary["reply_to_id"] = replyToId
		}
		if show != nil{
			dictionary["show"] = show
		}
		if status != nil{
			dictionary["status"] = status
		}
		if userId != nil{
			dictionary["user_id"] = userId
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         content = aDecoder.decodeObjectForKey("content") as? String
         createdAt = aDecoder.decodeObjectForKey("created_at") as? Int
         id = aDecoder.decodeObjectForKey("id") as? Int
         itemId = aDecoder.decodeObjectForKey("item_id") as? Int
         replyToId = aDecoder.decodeObjectForKey("reply_to_id") 
         show = aDecoder.decodeObjectForKey("show") as? Bool
         status = aDecoder.decodeObjectForKey("status") as? Int
         userId = aDecoder.decodeObjectForKey("user_id") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encodeWithCoder(aCoder: NSCoder)
	{
		if content != nil{
			aCoder.encodeObject(content, forKey: "content")
		}
		if createdAt != nil{
			aCoder.encodeObject(createdAt, forKey: "created_at")
		}
		if id != nil{
			aCoder.encodeObject(id, forKey: "id")
		}
		if itemId != nil{
			aCoder.encodeObject(itemId, forKey: "item_id")
		}
		if replyToId != nil{
			aCoder.encodeObject(replyToId, forKey: "reply_to_id")
		}
		if show != nil{
			aCoder.encodeObject(show, forKey: "show")
		}
		if status != nil{
			aCoder.encodeObject(status, forKey: "status")
		}
		if userId != nil{
			aCoder.encodeObject(userId, forKey: "user_id")
		}

	}

}