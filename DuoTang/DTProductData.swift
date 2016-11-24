//
//	DTProductData.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class DTProductData : NSObject, NSCoding{

	var brandId : AnyObject!
	var brandOrder : Int!
	var categoryId : AnyObject!
	var coverImageUrl : String!
	var createdAt : Int!
	var descriptionField : String!
	var editorId : Int!
	var favoritesCount : Int!
	var id : Int!
	var imageUrls : [String]!
	var isFavorite : Bool!
	var name : String!
	var postIds : [AnyObject]!
	var price : String!
	var purchaseId : String!
	var purchaseStatus : Int!
	var purchaseType : Int!
	var purchaseUrl : String!
	var subcategoryId : AnyObject!
	var updatedAt : Int!
	var url : String!
//	var items : [DTProductItem]!
//	var paging : DTProductPaging!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		brandId = dictionary["brand_id"]
		brandOrder = dictionary["brand_order"] as? Int
		categoryId = dictionary["category_id"]
		coverImageUrl = dictionary["cover_image_url"] as? String
		createdAt = dictionary["created_at"] as? Int
		descriptionField = dictionary["description"] as? String
		editorId = dictionary["editor_id"] as? Int
		favoritesCount = dictionary["favorites_count"] as? Int
		id = dictionary["id"] as? Int
		imageUrls = dictionary["image_urls"] as? [String]
		isFavorite = dictionary["is_favorite"] as? Bool
		name = dictionary["name"] as? String
		postIds = dictionary["post_ids"] as? [AnyObject]
		price = dictionary["price"] as? String
		purchaseId = dictionary["purchase_id"] as? String
		purchaseStatus = dictionary["purchase_status"] as? Int
		purchaseType = dictionary["purchase_type"] as? Int
		purchaseUrl = dictionary["purchase_url"] as? String
		subcategoryId = dictionary["subcategory_id"]
		updatedAt = dictionary["updated_at"] as? Int
		url = dictionary["url"] as? String
//		items = [DTProductItem]()
		if let itemsArray = dictionary["items"] as? [NSDictionary]{
			for _ in itemsArray{
//				let value = DTProductItem(fromDictionary: dic)
//				items.append(value)
			}
		}
//		if let pagingData = dictionary["paging"] as? NSDictionary{
//		paging = DTProductPaging(fromDictionary: pagingData)
//		}
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if brandId != nil{
			dictionary["brand_id"] = brandId
		}
		if brandOrder != nil{
			dictionary["brand_order"] = brandOrder
		}
		if categoryId != nil{
			dictionary["category_id"] = categoryId
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
		if editorId != nil{
			dictionary["editor_id"] = editorId
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
		if isFavorite != nil{
			dictionary["is_favorite"] = isFavorite
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
		if subcategoryId != nil{
			dictionary["subcategory_id"] = subcategoryId
		}
		if updatedAt != nil{
			dictionary["updated_at"] = updatedAt
		}
		if url != nil{
			dictionary["url"] = url
		}
//		if items != nil{
//			var dictionaryElements = [NSDictionary]()
//			for itemsElement in items {
//				dictionaryElements.append(itemsElement.toDictionary())
//			}
//			dictionary["items"] = dictionaryElements
//		}
//		if paging != nil{
//			dictionary["paging"] = paging.toDictionary()
//		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         brandId = aDecoder.decodeObjectForKey("brand_id")
         brandOrder = aDecoder.decodeObjectForKey("brand_order") as? Int
         categoryId = aDecoder.decodeObjectForKey("category_id")
         coverImageUrl = aDecoder.decodeObjectForKey("cover_image_url") as? String
         createdAt = aDecoder.decodeObjectForKey("created_at") as? Int
         descriptionField = aDecoder.decodeObjectForKey("description") as? String
         editorId = aDecoder.decodeObjectForKey("editor_id") as? Int
         favoritesCount = aDecoder.decodeObjectForKey("favorites_count") as? Int
         id = aDecoder.decodeObjectForKey("id") as? Int
         imageUrls = aDecoder.decodeObjectForKey("image_urls") as? [String]
         isFavorite = aDecoder.decodeObjectForKey("is_favorite") as? Bool
         name = aDecoder.decodeObjectForKey("name") as? String
         postIds = aDecoder.decodeObjectForKey("post_ids") as? [AnyObject]
         price = aDecoder.decodeObjectForKey("price") as? String
         purchaseId = aDecoder.decodeObjectForKey("purchase_id") as? String
         purchaseStatus = aDecoder.decodeObjectForKey("purchase_status") as? Int
         purchaseType = aDecoder.decodeObjectForKey("purchase_type") as? Int
         purchaseUrl = aDecoder.decodeObjectForKey("purchase_url") as? String
         subcategoryId = aDecoder.decodeObjectForKey("subcategory_id")
         updatedAt = aDecoder.decodeObjectForKey("updated_at") as? Int
         url = aDecoder.decodeObjectForKey("url") as? String
//         items = aDecoder.decodeObjectForKey("items") as? [DTProductItem]
//         paging = aDecoder.decodeObjectForKey("paging") as? DTProductPaging

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encodeWithCoder(aCoder: NSCoder)
	{
		if brandId != nil{
			aCoder.encodeObject(brandId, forKey: "brand_id")
		}
		if brandOrder != nil{
			aCoder.encodeObject(brandOrder, forKey: "brand_order")
		}
		if categoryId != nil{
			aCoder.encodeObject(categoryId, forKey: "category_id")
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
		if editorId != nil{
			aCoder.encodeObject(editorId, forKey: "editor_id")
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
		if isFavorite != nil{
			aCoder.encodeObject(isFavorite, forKey: "is_favorite")
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
		if subcategoryId != nil{
			aCoder.encodeObject(subcategoryId, forKey: "subcategory_id")
		}
		if updatedAt != nil{
			aCoder.encodeObject(updatedAt, forKey: "updated_at")
		}
		if url != nil{
			aCoder.encodeObject(url, forKey: "url")
		}
//		if items != nil{
//			aCoder.encodeObject(items, forKey: "items")
//		}
//		if paging != nil{
//			aCoder.encodeObject(paging, forKey: "paging")
//		}

	}

}