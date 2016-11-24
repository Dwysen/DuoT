//
//	DTChannel.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class DTChannel:NSObject {

	var groupId : Int!
	var iconUrl : String!
	var id : Int!
	var itemsCount : Int!
	var name : String!
	var order : Int!
	var status : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		groupId = dictionary["group_id"] as? Int
		iconUrl = dictionary["icon_url"] as? String
		id = dictionary["id"] as? Int
		itemsCount = dictionary["items_count"] as? Int
		name = dictionary["name"] as? String
		order = dictionary["order"] as? Int
		status = dictionary["status"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if groupId != nil{
			dictionary["group_id"] = groupId
		}
		if iconUrl != nil{
			dictionary["icon_url"] = iconUrl
		}
		if id != nil{
			dictionary["id"] = id
		}
		if itemsCount != nil{
			dictionary["items_count"] = itemsCount
		}
		if name != nil{
			dictionary["name"] = name
		}
		if order != nil{
			dictionary["order"] = order
		}
		if status != nil{
			dictionary["status"] = status
		}
		return dictionary
	}

}