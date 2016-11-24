//
//	DTCollection.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct DTCollection{

	var bannerImageUrl : String!
	var coverImageUrl : String!
	var createdAt : Int!
	var id : Int!
	var postsCount : Int!
	var status : Int!
	var subtitle : String!
	var title : String!
	var updatedAt : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		bannerImageUrl = dictionary["banner_image_url"] as? String
		coverImageUrl = dictionary["cover_image_url"] as? String
		createdAt = dictionary["created_at"] as? Int
		id = dictionary["id"] as? Int
		postsCount = dictionary["posts_count"] as? Int
		status = dictionary["status"] as? Int
		subtitle = dictionary["subtitle"] as? String
		title = dictionary["title"] as? String
		updatedAt = dictionary["updated_at"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if bannerImageUrl != nil{
			dictionary["banner_image_url"] = bannerImageUrl
		}
		if coverImageUrl != nil{
			dictionary["cover_image_url"] = coverImageUrl
		}
		if createdAt != nil{
			dictionary["created_at"] = createdAt
		}
		if id != nil{
			dictionary["id"] = id
		}
		if postsCount != nil{
			dictionary["posts_count"] = postsCount
		}
		if status != nil{
			dictionary["status"] = status
		}
		if subtitle != nil{
			dictionary["subtitle"] = subtitle
		}
		if title != nil{
			dictionary["title"] = title
		}
		if updatedAt != nil{
			dictionary["updated_at"] = updatedAt
		}
		return dictionary
	}

}