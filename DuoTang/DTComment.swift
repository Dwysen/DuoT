//
//	DTComment.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class DTComment : NSObject, NSCoding{

	var content : String!
	var createdAt : Int!
	var id : Int!
	var itemId : Int!
	var repliedComment : DTRepliedComment!
	var repliedUser : DTRepliedUser!
	var replyToId : AnyObject!
	var show : Bool!
	var status : Int!
	var user : DTRepliedUser!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		content = dictionary["content"] as? String
		createdAt = dictionary["created_at"] as? Int
		id = dictionary["id"] as? Int
		itemId = dictionary["item_id"] as? Int
		if let repliedCommentData = dictionary["replied_comment"] as? NSDictionary{
			repliedComment = DTRepliedComment(fromDictionary: repliedCommentData)
		}
		if let repliedUserData = dictionary["replied_user"] as? NSDictionary{
			repliedUser = DTRepliedUser(fromDictionary: repliedUserData)
		}
		replyToId = dictionary["reply_to_id"]
		show = dictionary["show"] as? Bool
		status = dictionary["status"] as? Int
		if let userData = dictionary["user"] as? NSDictionary{
			user = DTRepliedUser(fromDictionary: userData)
		}
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
		if repliedComment != nil{
			dictionary["replied_comment"] = repliedComment.toDictionary()
		}
		if repliedUser != nil{
			dictionary["replied_user"] = repliedUser.toDictionary()
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
		if user != nil{
			dictionary["user"] = user.toDictionary()
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
         repliedComment = aDecoder.decodeObjectForKey("replied_comment") as? DTRepliedComment
         repliedUser = aDecoder.decodeObjectForKey("replied_user") as? DTRepliedUser
         replyToId = aDecoder.decodeObjectForKey("reply_to_id") 
         show = aDecoder.decodeObjectForKey("show") as? Bool
         status = aDecoder.decodeObjectForKey("status") as? Int
         user = aDecoder.decodeObjectForKey("user") as? DTRepliedUser

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
		if repliedComment != nil{
			aCoder.encodeObject(repliedComment, forKey: "replied_comment")
		}
		if repliedUser != nil{
			aCoder.encodeObject(repliedUser, forKey: "replied_user")
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
		if user != nil{
			aCoder.encodeObject(user, forKey: "user")
		}

	}

}