//
//  Category.swift
//  Model
//
//  Created by Giáp Trần on 9/1/16.
//  Copyright © 2016 TVG Soft, Inc. All rights reserved.
//

import SwiftyJSON

public class Category: Entity {
    
    // MARK: Property
    
    dynamic var name: String?
    dynamic var image: String?
    
    // MARK: Override method
    
    public override class func from<T: Category>(json: JSON, inout output: T?) {
        super.from(json, output: &output)
        
        output!.name = json["name"].string
        output!.image = json["image"].string
    }
    
}