
//
//  JSONable.swift
//  jsonable
//
//  Created by Naoto Ida on 12/8/15.
//  Copyright © 2015 naotoida. All rights reserved.
//

import Foundation

class JSONable {
    var json: JSON {
        get {
            var dict = [String: AnyObject]()
            let mirror = Mirror(reflecting: self)
            for (_, attr) in mirror.children.enumerate() {
                if let property_name = attr.label as String! {
                    dict[property_name] = attr.value as? AnyObject
                }
            }
            return JSON(dict)
        }
    }
}
