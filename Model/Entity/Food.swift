//
//  Food.swift
//  Model
//
//  Created by Giáp Trần on 9/5/16.
//  Copyright © 2016 TVG Soft, Inc. All rights reserved.
//

import SwiftyJSON

public class Food: Entity {
    
    // MARK: Property
    
    dynamic var name: String?
    dynamic var image: String?
    dynamic var categoryId: Int = 0
    dynamic var restaurantId: Int = 0
    dynamic var content: String?
    dynamic var isDeleted: Bool = false
    
    // MARK: Override method
    
    public override class func from<T: Food>(json: JSON, inout output: T?) {
        super.from(json, output: &output)
        
        output!.name = json["name"].string
        output!.image = json["image"].string
        output!.categoryId = json["category_id"].intValue
        output!.restaurantId = json["restaurant_id"].intValue
        output!.content = json["content"].string
        output!.isDeleted = json["is_deleted"].boolValue
    }
    
}