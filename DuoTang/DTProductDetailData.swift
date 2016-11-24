//
//	DTData.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class DTProductDetailData : NSObject, NSCoding{

	var authentic : AnyObject!
	var brandId : AnyObject!
	var brandOrder : Int!
	var categoryId : AnyObject!
	var commentsCount : Int!
	var coverImageUrl : String!
	var createdAt : Int!
	var descriptionField : String!
	var detailHtml : String!
	var editorId : Int!
	var favorited : Bool!
	var favoritesCount : Int!
	var id : Int!
	var imageUrls : [String]!
	var liked : Bool!
	var likesCount : Int!
	var name : String!
	var postIds : [AnyObject]!
	var price : String!
	var purchaseId : String!
	var purchaseStatus : Int!
	var purchaseType : Int!
	var purchaseUrl : String!
	var sharesCount : Int!
//	var source : DTSource!
	var subcategoryId : AnyObject!
	var updatedAt : Int!
	var url : String!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		authentic = dictionary["authentic"]
		brandId = dictionary["brand_id"]
		brandOrder = dictionary["brand_order"] as? Int
		categoryId = dictionary["category_id"]
		commentsCount = dictionary["comments_count"] as? Int
		coverImageUrl = dictionary["cover_image_url"] as? String
		createdAt = dictionary["created_at"] as? Int
		descriptionField = dictionary["description"] as? String
		detailHtml = dictionary["detail_html"] as? String
		editorId = dictionary["editor_id"] as? Int
		favorited = dictionary["favorited"] as? Bool
		favoritesCount = dictionary["favorites_count"] as? Int
		id = dictionary["id"] as? Int
		imageUrls = dictionary["image_urls"] as? [String]
		liked = dictionary["liked"] as? Bool
		likesCount = dictionary["likes_count"] as? Int
		name = dictionary["name"] as? String
		postIds = dictionary["post_ids"] as? [AnyObject]
		price = dictionary["price"] as? String
		purchaseId = dictionary["purchase_id"] as? String
		purchaseStatus = dictionary["purchase_status"] as? Int
		purchaseType = dictionary["purchase_type"] as? Int
		purchaseUrl = dictionary["purchase_url"] as? String
		sharesCount = dictionary["shares_count"] as? Int
//		if let sourceData = dictionary["source"] as? NSDictionary{
//			source = DTSource(fromDictionary: sourceData)
//		}
		subcategoryId = dictionary["subcategory_id"]
		updatedAt = dictionary["updated_at"] as? Int
		url = dictionary["url"] as? String
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if authentic != nil{
			dictionary["authentic"] = authentic
		}
		if brandId != nil{
			dictionary["brand_id"] = brandId
		}
		if brandOrder != nil{
			dictionary["brand_order"] = brandOrder
		}
		if categoryId != nil{
			dictionary["category_id"] = categoryId
		}
		if commentsCount != nil{
			dictionary["comments_count"] = commentsCount
		}
		if coverImageUrl != nil{
			dictionary["cover_image_url"] = coverImageUrl
		}
		if createdAt != nil{
			dictionary["created_at"] = createdAt
		}
		if descriptionField != nil{
			dictionary["description"] = descriptionField
		}
		if detailHtml != nil{
			dictionary["detail_html"] = detailHtml
		}
		if editorId != nil{
			dictionary["editor_id"] = editorId
		}
		if favorited != nil{
			dictionary["favorited"] = favorited
		}
		if favoritesCount != nil{
			dictionary["favorites_count"] = favoritesCount
		}
		if id != nil{
			dictionary["id"] = id
		}
		if imageUrls != nil{
			dictionary["image_urls"] = imageUrls
		}
		if liked != nil{
			dictionary["liked"] = liked
		}
		if likesCount != nil{
			dictionary["likes_count"] = likesCount
		}
		if name != nil{
			dictionary["name"] = name
		}
		if postIds != nil{
			dictionary["post_ids"] = postIds
		}
		if price != nil{
			dictionary["price"] = price
		}
		if purchaseId != nil{
			dictionary["purchase_id"] = purchaseId
		}
		if purchaseStatus != nil{
			dictionary["purchase_status"] = purchaseStatus
		}
		if purchaseType != nil{
			dictionary["purchase_type"] = purchaseType
		}
		if purchaseUrl != nil{
			dictionary["purchase_url"] = purchaseUrl
		}
		if sharesCount != nil{
			dictionary["shares_count"] = sharesCount
		}
//		if source != nil{
//			dictionary["source"] = source.toDictionary()
//		}
		if subcategoryId != nil{
			dictionary["subcategory_id"] = subcategoryId
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
         authentic = aDecoder.decodeObjectForKey("authentic")
         brandId = aDecoder.decodeObjectForKey("brand_id")
         brandOrder = aDecoder.decodeObjectForKey("brand_order") as? Int
         categoryId = aDecoder.decodeObjectForKey("category_id")
         commentsCount = aDecoder.decodeObjectForKey("comments_count") as? Int
         coverImageUrl = aDecoder.decodeObjectForKey("cover_image_url") as? String
         createdAt = aDecoder.decodeObjectForKey("created_at") as? Int
         descriptionField = aDecoder.decodeObjectForKey("description") as? String
         detailHtml = aDecoder.decodeObjectForKey("detail_html") as? String
         editorId = aDecoder.decodeObjectForKey("editor_id") as? Int
         favorited = aDecoder.decodeObjectForKey("favorited") as? Bool
         favoritesCount = aDecoder.decodeObjectForKey("favorites_count") as? Int
         id = aDecoder.decodeObjectForKey("id") as? Int
         imageUrls = aDecoder.decodeObjectForKey("image_urls") as? [String]
         liked = aDecoder.decodeObjectForKey("liked") as? Bool
         likesCount = aDecoder.decodeObjectForKey("likes_count") as? Int
         name = aDecoder.decodeObjectForKey("name") as? String
         postIds = aDecoder.decodeObjectForKey("post_ids") as? [AnyObject]
         price = aDecoder.decodeObjectForKey("price") as? String
         purchaseId = aDecoder.decodeObjectForKey("purchase_id") as? String
         purchaseStatus = aDecoder.decodeObjectForKey("purchase_status") as? Int
         purchaseType = aDecoder.decodeObjectForKey("purchase_type") as? Int
         purchaseUrl = aDecoder.decodeObjectForKey("purchase_url") as? String
         sharesCount = aDecoder.decodeObjectForKey("shares_count") as? Int
//         source = aDecoder.decodeObjectForKey("source") as? DTSource
         subcategoryId = aDecoder.decodeObjectForKey("subcategory_id")
         updatedAt = aDecoder.decodeObjectForKey("updated_at") as? Int
         url = aDecoder.decodeObjectForKey("url") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encodeWithCoder(aCoder: NSCoder)
	{
		if authentic != nil{
			aCoder.encodeObject(authentic, forKey: "authentic")
		}
		if brandId != nil{
			aCoder.encodeObject(brandId, forKey: "brand_id")
		}
		if brandOrder != nil{
			aCoder.encodeObject(brandOrder, forKey: "brand_order")
		}
		if categoryId != nil{
			aCoder.encodeObject(categoryId, forKey: "category_id")
		}
		if commentsCount != nil{
			aCoder.encodeObject(commentsCount, forKey: "comments_count")
		}
		if coverImageUrl != nil{
			aCoder.encodeObject(coverImageUrl, forKey: "cover_image_url")
		}
		if createdAt != nil{
			aCoder.encodeObject(createdAt, forKey: "created_at")
		}
		if descriptionField != nil{
			aCoder.encodeObject(descriptionField, forKey: "description")
		}
		if detailHtml != nil{
			aCoder.encodeObject(detailHtml, forKey: "detail_html")
		}
		if editorId != nil{
			aCoder.encodeObject(editorId, forKey: "editor_id")
		}
		if favorited != nil{
			aCoder.encodeObject(favorited, forKey: "favorited")
		}
		if favoritesCount != nil{
			aCoder.encodeObject(favoritesCount, forKey: "favorites_count")
		}
		if id != nil{
			aCoder.encodeObject(id, forKey: "id")
		}
		if imageUrls != nil{
			aCoder.encodeObject(imageUrls, forKey: "image_urls")
		}
		if liked != nil{
			aCoder.encodeObject(liked, forKey: "liked")
		}
		if likesCount != nil{
			aCoder.encodeObject(likesCount, forKey: "likes_count")
		}
		if name != nil{
			aCoder.encodeObject(name, forKey: "name")
		}
		if postIds != nil{
			aCoder.encodeObject(postIds, forKey: "post_ids")
		}
		if price != nil{
			aCoder.encodeObject(price, forKey: "price")
		}
		if purchaseId != nil{
			aCoder.encodeObject(purchaseId, forKey: "purchase_id")
		}
		if purchaseStatus != nil{
			aCoder.encodeObject(purchaseStatus, forKey: "purchase_status")
		}
		if purchaseType != nil{
			aCoder.encodeObject(purchaseType, forKey: "purchase_type")
		}
		if purchaseUrl != nil{
			aCoder.encodeObject(purchaseUrl, forKey: "purchase_url")
		}
		if sharesCount != nil{
			aCoder.encodeObject(sharesCount, forKey: "shares_count")
		}
//		if source != nil{
//			aCoder.encodeObject(source, forKey: "source")
//		}
		if subcategoryId != nil{
			aCoder.encodeObject(subcategoryId, forKey: "subcategory_id")
		}
		if updatedAt != nil{
			aCoder.encodeObject(updatedAt, forKey: "updated_at")
		}
		if url != nil{
			aCoder.encodeObject(url, forKey: "url")
		}

	}

}