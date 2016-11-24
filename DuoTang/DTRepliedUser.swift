//
//	DTRepliedUser.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class DTRepliedUser : NSObject, NSCoding{

	var avatarUrl : String!
	var canMobileLogin : Bool!
	var guestUuid : AnyObject!
	var id : Int!
	var nickname : String!
	var role : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		avatarUrl = dictionary["avatar_url"] as? String
		canMobileLogin = dictionary["can_mobile_login"] as? Bool
		guestUuid = dictionary["guest_uuid"]
		id = dictionary["id"] as? Int
		nickname = dictionary["nickname"] as? String
		role = dictionary["role"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if avatarUrl != nil{
			dictionary["avatar_url"] = avatarUrl
		}
		if canMobileLogin != nil{
			dictionary["can_mobile_login"] = canMobileLogin
		}
		if guestUuid != nil{
			dictionary["guest_uuid"] = guestUuid
		}
		if id != nil{
			dictionary["id"] = id
		}
		if nickname != nil{
			dictionary["nickname"] = nickname
		}
		if role != nil{
			dictionary["role"] = role
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         avatarUrl = aDecoder.decodeObjectForKey("avatar_url") as? String
         canMobileLogin = aDecoder.decodeObjectForKey("can_mobile_login") as? Bool
         guestUuid = aDecoder.decodeObjectForKey("guest_uuid") 
         id = aDecoder.decodeObjectForKey("id") as? Int
         nickname = aDecoder.decodeObjectForKey("nickname") as? String
         role = aDecoder.decodeObjectForKey("role") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encodeWithCoder(aCoder: NSCoder)
	{
		if avatarUrl != nil{
			aCoder.encodeObject(avatarUrl, forKey: "avatar_url")
		}
		if canMobileLogin != nil{
			aCoder.encodeObject(canMobileLogin, forKey: "can_mobile_login")
		}
		if guestUuid != nil{
			aCoder.encodeObject(guestUuid, forKey: "guest_uuid")
		}
		if id != nil{
			aCoder.encodeObject(id, forKey: "id")
		}
		if nickname != nil{
			aCoder.encodeObject(nickname, forKey: "nickname")
		}
		if role != nil{
			aCoder.encodeObject(role, forKey: "role")
		}

	}

}